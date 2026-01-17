"""
API Kê khai công việc - Module 2
- Công chức kê khai công việc hàng ngày
- Lãnh đạo phê duyệt kê khai
"""
from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy import select, func, and_, or_
from pydantic import BaseModel
from typing import Optional, List
from datetime import date, datetime
from ..core.database import get_db
from ..core.security import get_current_user
from ..models import NguoiDung, DonVi, ChucVu, SanPham, MucDo, HeSo, KeKhai

router = APIRouter(prefix="/ke-khai", tags=["Kê khai"])

# ===== SCHEMAS =====
class KeKhaiCreate(BaseModel):
    ngay_thuc_hien: date
    san_pham_id: int
    muc_do_id: int
    so_luong: int = 1
    he_so_tu_nhap: Optional[float] = None  # Cho mức độ "Đặc thù"
    mo_ta: Optional[str] = None

class KeKhaiUpdate(BaseModel):
    san_pham_id: Optional[int] = None
    muc_do_id: Optional[int] = None
    so_luong: Optional[int] = None
    he_so_tu_nhap: Optional[float] = None
    mo_ta: Optional[str] = None

class PheDuyetRequest(BaseModel):
    ke_khai_ids: List[int]
    hanh_dong: str  # 'duyet' hoặc 'tu_choi'
    ly_do: Optional[str] = None

# ===== HELPER FUNCTIONS =====
async def get_he_so(db: AsyncSession, san_pham_id: int, muc_do_id: int) -> Optional[float]:
    result = await db.execute(
        select(HeSo).where(and_(HeSo.san_pham_id == san_pham_id, HeSo.muc_do_id == muc_do_id, HeSo.trang_thai == True))
    )
    he_so = result.scalar_one_or_none()
    return float(he_so.he_so) if he_so else None

async def check_muc_do_dac_thu(db: AsyncSession, muc_do_id: int) -> bool:
    result = await db.execute(select(MucDo).where(MucDo.id == muc_do_id))
    muc_do = result.scalar_one_or_none()
    return muc_do.cho_phep_tu_nhap_he_so if muc_do else False

async def format_ke_khai(kk: KeKhai, db: AsyncSession) -> dict:
    # Get related info
    nguoi_dung = (await db.execute(select(NguoiDung).where(NguoiDung.id == kk.nguoi_dung_id))).scalar_one_or_none()
    san_pham = (await db.execute(select(SanPham).where(SanPham.id == kk.san_pham_id))).scalar_one_or_none()
    muc_do = (await db.execute(select(MucDo).where(MucDo.id == kk.muc_do_id))).scalar_one_or_none()
    don_vi = (await db.execute(select(DonVi).where(DonVi.id == kk.don_vi_id))).scalar_one_or_none() if kk.don_vi_id else None
    nguoi_duyet = (await db.execute(select(NguoiDung).where(NguoiDung.id == kk.nguoi_duyet_id))).scalar_one_or_none() if kk.nguoi_duyet_id else None
    
    return {
        "id": kk.id,
        "nguoi_dung_id": kk.nguoi_dung_id,
        "nguoi_dung_ten": nguoi_dung.ho_ten if nguoi_dung else "",
        "ma_cong_chuc": nguoi_dung.ma_cong_chuc if nguoi_dung else "",
        "don_vi_id": kk.don_vi_id,
        "don_vi_ten": don_vi.ten_don_vi if don_vi else "",
        "ngay_thuc_hien": kk.ngay_thuc_hien.isoformat() if kk.ngay_thuc_hien else None,
        "san_pham_id": kk.san_pham_id,
        "san_pham_ten": san_pham.ten_san_pham if san_pham else "",
        "muc_do_id": kk.muc_do_id,
        "muc_do_ten": muc_do.ten_muc_do if muc_do else "",
        "so_luong": kk.so_luong,
        "he_so": float(kk.he_so),
        "diem_quy_doi": float(kk.diem_quy_doi),
        "mo_ta": kk.mo_ta,
        "trang_thai": kk.trang_thai,
        "nguoi_duyet_id": kk.nguoi_duyet_id,
        "nguoi_duyet_ten": nguoi_duyet.ho_ten if nguoi_duyet else "",
        "ngay_duyet": kk.ngay_duyet.isoformat() if kk.ngay_duyet else None,
        "ly_do_tu_choi": kk.ly_do_tu_choi,
        "ngay_tao": kk.ngay_tao.isoformat() if kk.ngay_tao else None,
    }

# ===== API CÔNG CHỨC KÊ KHAI =====

@router.get("/danh-muc/san-pham")
async def get_san_pham_for_ke_khai(db: AsyncSession = Depends(get_db), user: NguoiDung = Depends(get_current_user)):
    """Lấy danh sách sản phẩm cho kê khai"""
    result = await db.execute(select(SanPham).where(SanPham.trang_thai == True).order_by(SanPham.thu_tu))
    return result.scalars().all()

@router.get("/danh-muc/muc-do")
async def get_muc_do_for_ke_khai(db: AsyncSession = Depends(get_db), user: NguoiDung = Depends(get_current_user)):
    """Lấy danh sách mức độ cho kê khai"""
    result = await db.execute(select(MucDo).where(MucDo.trang_thai == True).order_by(MucDo.thu_tu))
    return result.scalars().all()

@router.get("/danh-muc/he-so/{san_pham_id}")
async def get_he_so_by_san_pham(san_pham_id: int, db: AsyncSession = Depends(get_db), user: NguoiDung = Depends(get_current_user)):
    """Lấy hệ số theo sản phẩm"""
    result = await db.execute(
        select(HeSo).where(and_(HeSo.san_pham_id == san_pham_id, HeSo.trang_thai == True))
    )
    he_so_list = result.scalars().all()
    
    response = []
    for hs in he_so_list:
        md = (await db.execute(select(MucDo).where(MucDo.id == hs.muc_do_id))).scalar_one_or_none()
        response.append({
            "muc_do_id": hs.muc_do_id,
            "muc_do_ten": md.ten_muc_do if md else "",
            "he_so": float(hs.he_so),
            "cho_phep_tu_nhap": md.cho_phep_tu_nhap_he_so if md else False
        })
    return response

@router.get("/cua-toi")
async def get_ke_khai_cua_toi(
    thang: Optional[int] = None,
    nam: Optional[int] = None,
    trang_thai: Optional[str] = None,
    db: AsyncSession = Depends(get_db),
    user: NguoiDung = Depends(get_current_user)
):
    """Lấy danh sách kê khai của công chức đang đăng nhập"""
    query = select(KeKhai).where(KeKhai.nguoi_dung_id == user.id)
    
    if thang and nam:
        from sqlalchemy import extract
        query = query.where(and_(
            extract('month', KeKhai.ngay_thuc_hien) == thang,
            extract('year', KeKhai.ngay_thuc_hien) == nam
        ))
    
    if trang_thai:
        query = query.where(KeKhai.trang_thai == trang_thai)
    
    query = query.order_by(KeKhai.ngay_thuc_hien.desc(), KeKhai.id.desc())
    
    result = await db.execute(query)
    ke_khais = result.scalars().all()
    
    return [await format_ke_khai(kk, db) for kk in ke_khais]

@router.post("")
async def create_ke_khai(
    data: KeKhaiCreate,
    db: AsyncSession = Depends(get_db),
    user: NguoiDung = Depends(get_current_user)
):
    """Tạo kê khai công việc mới"""
    
    # Kiểm tra sản phẩm
    san_pham = (await db.execute(select(SanPham).where(SanPham.id == data.san_pham_id))).scalar_one_or_none()
    if not san_pham:
        raise HTTPException(status_code=400, detail="Sản phẩm không tồn tại")
    
    # Kiểm tra mức độ
    muc_do = (await db.execute(select(MucDo).where(MucDo.id == data.muc_do_id))).scalar_one_or_none()
    if not muc_do:
        raise HTTPException(status_code=400, detail="Mức độ không tồn tại")
    
    # Lấy hệ số
    if muc_do.cho_phep_tu_nhap_he_so:
        # Mức độ "Đặc thù" - cho phép tự nhập hệ số
        if data.he_so_tu_nhap is None or data.he_so_tu_nhap <= 0:
            raise HTTPException(status_code=400, detail="Vui lòng nhập hệ số cho mức độ Đặc thù")
        he_so = data.he_so_tu_nhap
    else:
        # Lấy hệ số từ bảng dm_he_so
        he_so = await get_he_so(db, data.san_pham_id, data.muc_do_id)
        if he_so is None:
            raise HTTPException(status_code=400, detail="Không tìm thấy hệ số cho sản phẩm và mức độ này")
    
    # Tính điểm quy đổi
    diem_quy_doi = data.so_luong * he_so
    
    # Tạo kê khai
    ke_khai = KeKhai(
        nguoi_dung_id=user.id,
        don_vi_id=user.don_vi_id,
        ngay_thuc_hien=data.ngay_thuc_hien,
        san_pham_id=data.san_pham_id,
        muc_do_id=data.muc_do_id,
        so_luong=data.so_luong,
        he_so=he_so,
        diem_quy_doi=diem_quy_doi,
        mo_ta=data.mo_ta,
        trang_thai='cho_duyet'
    )
    
    db.add(ke_khai)
    await db.commit()
    await db.refresh(ke_khai)
    
    return {"message": "Kê khai thành công", "id": ke_khai.id, "diem_quy_doi": diem_quy_doi}

@router.put("/{id}")
async def update_ke_khai(
    id: int,
    data: KeKhaiUpdate,
    db: AsyncSession = Depends(get_db),
    user: NguoiDung = Depends(get_current_user)
):
    """Cập nhật kê khai (chỉ khi chưa duyệt)"""
    
    ke_khai = (await db.execute(select(KeKhai).where(KeKhai.id == id))).scalar_one_or_none()
    if not ke_khai:
        raise HTTPException(status_code=404, detail="Không tìm thấy kê khai")
    
    if ke_khai.nguoi_dung_id != user.id:
        raise HTTPException(status_code=403, detail="Bạn không có quyền sửa kê khai này")
    
    if ke_khai.trang_thai != 'cho_duyet':
        raise HTTPException(status_code=400, detail="Chỉ có thể sửa kê khai đang chờ duyệt")
    
    # Update fields
    if data.san_pham_id:
        ke_khai.san_pham_id = data.san_pham_id
    if data.muc_do_id:
        ke_khai.muc_do_id = data.muc_do_id
    if data.so_luong:
        ke_khai.so_luong = data.so_luong
    if data.mo_ta is not None:
        ke_khai.mo_ta = data.mo_ta
    
    # Recalculate he_so and diem
    muc_do = (await db.execute(select(MucDo).where(MucDo.id == ke_khai.muc_do_id))).scalar_one_or_none()
    if muc_do and muc_do.cho_phep_tu_nhap_he_so and data.he_so_tu_nhap:
        ke_khai.he_so = data.he_so_tu_nhap
    else:
        he_so = await get_he_so(db, ke_khai.san_pham_id, ke_khai.muc_do_id)
        if he_so:
            ke_khai.he_so = he_so
    
    ke_khai.diem_quy_doi = ke_khai.so_luong * float(ke_khai.he_so)
    
    await db.commit()
    return {"message": "Cập nhật thành công"}

@router.delete("/{id}")
async def delete_ke_khai(
    id: int,
    db: AsyncSession = Depends(get_db),
    user: NguoiDung = Depends(get_current_user)
):
    """Xóa kê khai (chỉ khi chưa duyệt)"""
    
    ke_khai = (await db.execute(select(KeKhai).where(KeKhai.id == id))).scalar_one_or_none()
    if not ke_khai:
        raise HTTPException(status_code=404, detail="Không tìm thấy kê khai")
    
    if ke_khai.nguoi_dung_id != user.id:
        raise HTTPException(status_code=403, detail="Bạn không có quyền xóa kê khai này")
    
    if ke_khai.trang_thai != 'cho_duyet':
        raise HTTPException(status_code=400, detail="Chỉ có thể xóa kê khai đang chờ duyệt")
    
    await db.delete(ke_khai)
    await db.commit()
    return {"message": "Đã xóa kê khai"}

# ===== API LÃNH ĐẠO PHÊ DUYỆT =====

@router.get("/cho-duyet")
async def get_ke_khai_cho_duyet(
    thang: Optional[int] = None,
    nam: Optional[int] = None,
    db: AsyncSession = Depends(get_db),
    user: NguoiDung = Depends(get_current_user)
):
    """Lấy danh sách kê khai chờ duyệt (cho lãnh đạo)
    
    Quy tắc phê duyệt theo cấp:
    - Phó TP/ĐT (cấp 1): Duyệt CC (cấp 0) trong đơn vị
    - TP/ĐT (cấp 2): Duyệt Phó (cấp 1) trong đơn vị  
    - Phó CCT (cấp 3): Duyệt TP/ĐT (cấp 2)
    - CCT (cấp 4): Duyệt tất cả
    """
    
    # Kiểm tra quyền lãnh đạo
    chuc_vu = (await db.execute(select(ChucVu).where(ChucVu.id == user.chuc_vu_id))).scalar_one_or_none()
    if not chuc_vu or not chuc_vu.la_lanh_dao:
        raise HTTPException(status_code=403, detail="Chỉ lãnh đạo mới có quyền xem")
    
    cap_duyet = chuc_vu.cap_lanh_dao  # Cấp của người duyệt
    
    # Lấy kê khai chờ duyệt
    query = select(KeKhai).where(and_(
        KeKhai.trang_thai == 'cho_duyet',
        KeKhai.nguoi_dung_id != user.id  # Không hiển thị kê khai của chính mình
    ))
    
    # Cấp 3, 4 (Phó CCT, CCT): Duyệt toàn chi cục
    # Cấp 1, 2: Chỉ duyệt trong đơn vị
    if cap_duyet < 3:
        query = query.where(KeKhai.don_vi_id == user.don_vi_id)
    
    if thang and nam:
        from sqlalchemy import extract
        query = query.where(and_(
            extract('month', KeKhai.ngay_thuc_hien) == thang,
            extract('year', KeKhai.ngay_thuc_hien) == nam
        ))
    
    query = query.order_by(KeKhai.ngay_thuc_hien.desc(), KeKhai.id.desc())
    
    result = await db.execute(query)
    ke_khais = result.scalars().all()
    
    # Lọc theo cấp: chỉ hiển thị kê khai của người có cấp thấp hơn
    filtered = []
    for kk in ke_khais:
        # Lấy thông tin người kê khai
        nguoi_kk = (await db.execute(select(NguoiDung).where(NguoiDung.id == kk.nguoi_dung_id))).scalar_one_or_none()
        if not nguoi_kk:
            continue
        
        # Lấy cấp lãnh đạo của người kê khai
        cap_nguoi_kk = 0
        if nguoi_kk.chuc_vu_id:
            cv_nguoi_kk = (await db.execute(select(ChucVu).where(ChucVu.id == nguoi_kk.chuc_vu_id))).scalar_one_or_none()
            if cv_nguoi_kk:
                cap_nguoi_kk = cv_nguoi_kk.cap_lanh_dao
        
        # Chỉ duyệt người có cấp thấp hơn
        if cap_nguoi_kk < cap_duyet:
            filtered.append(kk)
    
    return [await format_ke_khai(kk, db) for kk in filtered]

@router.get("/da-duyet")
async def get_ke_khai_da_xu_ly(
    thang: Optional[int] = None,
    nam: Optional[int] = None,
    db: AsyncSession = Depends(get_db),
    user: NguoiDung = Depends(get_current_user)
):
    """Lấy danh sách kê khai đã xử lý (đã duyệt/từ chối)"""
    
    chuc_vu = (await db.execute(select(ChucVu).where(ChucVu.id == user.chuc_vu_id))).scalar_one_or_none()
    if not chuc_vu or not chuc_vu.la_lanh_dao:
        raise HTTPException(status_code=403, detail="Chỉ lãnh đạo mới có quyền xem")
    
    cap_duyet = chuc_vu.cap_lanh_dao
    
    query = select(KeKhai).where(
        KeKhai.trang_thai.in_(['da_duyet', 'tu_choi'])
    )
    
    # Cấp 1, 2: Chỉ xem trong đơn vị
    if cap_duyet < 3:
        query = query.where(KeKhai.don_vi_id == user.don_vi_id)
    
    if thang and nam:
        from sqlalchemy import extract
        query = query.where(and_(
            extract('month', KeKhai.ngay_thuc_hien) == thang,
            extract('year', KeKhai.ngay_thuc_hien) == nam
        ))
    
    query = query.order_by(KeKhai.ngay_duyet.desc())
    
    result = await db.execute(query)
    ke_khais = result.scalars().all()
    
    return [await format_ke_khai(kk, db) for kk in ke_khais]

@router.post("/phe-duyet")
async def phe_duyet_ke_khai(
    data: PheDuyetRequest,
    db: AsyncSession = Depends(get_db),
    user: NguoiDung = Depends(get_current_user)
):
    """Phê duyệt hoặc từ chối kê khai
    
    Quy tắc: Chỉ duyệt người có cấp thấp hơn mình
    """
    
    # Kiểm tra quyền lãnh đạo
    chuc_vu = (await db.execute(select(ChucVu).where(ChucVu.id == user.chuc_vu_id))).scalar_one_or_none()
    if not chuc_vu or not chuc_vu.la_lanh_dao:
        raise HTTPException(status_code=403, detail="Chỉ lãnh đạo mới có quyền phê duyệt")
    
    cap_duyet = chuc_vu.cap_lanh_dao
    
    if data.hanh_dong not in ['duyet', 'tu_choi']:
        raise HTTPException(status_code=400, detail="Hành động không hợp lệ")
    
    if data.hanh_dong == 'tu_choi' and not data.ly_do:
        raise HTTPException(status_code=400, detail="Vui lòng nhập lý do từ chối")
    
    count = 0
    for kk_id in data.ke_khai_ids:
        ke_khai = (await db.execute(select(KeKhai).where(KeKhai.id == kk_id))).scalar_one_or_none()
        
        if not ke_khai:
            continue
        
        # Chỉ xử lý kê khai đang chờ duyệt
        if ke_khai.trang_thai != 'cho_duyet':
            continue
        
        # Kiểm tra đơn vị (cấp 1,2 chỉ duyệt trong đơn vị)
        if cap_duyet < 3 and ke_khai.don_vi_id != user.don_vi_id:
            continue
        
        # Kiểm tra cấp: chỉ duyệt người có cấp thấp hơn
        nguoi_kk = (await db.execute(select(NguoiDung).where(NguoiDung.id == ke_khai.nguoi_dung_id))).scalar_one_or_none()
        if nguoi_kk:
            cap_nguoi_kk = 0
            if nguoi_kk.chuc_vu_id:
                cv_nguoi_kk = (await db.execute(select(ChucVu).where(ChucVu.id == nguoi_kk.chuc_vu_id))).scalar_one_or_none()
                if cv_nguoi_kk:
                    cap_nguoi_kk = cv_nguoi_kk.cap_lanh_dao
            
            if cap_nguoi_kk >= cap_duyet:
                continue  # Không duyệt người cùng cấp hoặc cao hơn
        
        # Cập nhật trạng thái
        ke_khai.trang_thai = 'da_duyet' if data.hanh_dong == 'duyet' else 'tu_choi'
        ke_khai.nguoi_duyet_id = user.id
        ke_khai.ngay_duyet = datetime.now()
        if data.hanh_dong == 'tu_choi':
            ke_khai.ly_do_tu_choi = data.ly_do
        
        count += 1
    
    await db.commit()
    
    action_text = "duyệt" if data.hanh_dong == 'duyet' else "từ chối"
    return {"message": f"Đã {action_text} {count} kê khai"}

# ===== THỐNG KÊ =====

@router.get("/thong-ke/cua-toi")
async def thong_ke_cua_toi(
    thang: int,
    nam: int,
    db: AsyncSession = Depends(get_db),
    user: NguoiDung = Depends(get_current_user)
):
    """Thống kê kê khai của công chức trong tháng"""
    from sqlalchemy import extract
    
    # Tổng kê khai
    query = select(KeKhai).where(and_(
        KeKhai.nguoi_dung_id == user.id,
        extract('month', KeKhai.ngay_thuc_hien) == thang,
        extract('year', KeKhai.ngay_thuc_hien) == nam
    ))
    result = await db.execute(query)
    ke_khais = result.scalars().all()
    
    tong = len(ke_khais)
    cho_duyet = sum(1 for kk in ke_khais if kk.trang_thai == 'cho_duyet')
    da_duyet = sum(1 for kk in ke_khais if kk.trang_thai == 'da_duyet')
    tu_choi = sum(1 for kk in ke_khais if kk.trang_thai == 'tu_choi')
    tong_diem = sum(float(kk.diem_quy_doi) for kk in ke_khais if kk.trang_thai == 'da_duyet')
    
    return {
        "thang": thang,
        "nam": nam,
        "tong_ke_khai": tong,
        "cho_duyet": cho_duyet,
        "da_duyet": da_duyet,
        "tu_choi": tu_choi,
        "tong_diem_da_duyet": tong_diem
    }
