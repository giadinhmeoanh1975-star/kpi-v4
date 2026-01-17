from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy import select, func, and_
from pydantic import BaseModel
from typing import Optional
from ..core.database import get_db
from ..core.security import get_admin_user, get_password_hash
from ..models import NguoiDung, DonVi, ChucVu, SanPham, MucDo, HeSo

router = APIRouter(prefix="/admin", tags=["Admin"])

# ===== SCHEMAS =====
class NguoiDungCreate(BaseModel):
    ma_cong_chuc: str
    ho_ten: str
    nam_sinh: Optional[str] = None
    don_vi_id: Optional[int] = None
    chuc_vu_id: Optional[int] = None
    email: Optional[str] = None
    so_dien_thoai: Optional[str] = None
    la_admin: bool = False
    la_tccb: bool = False

class NguoiDungUpdate(BaseModel):
    ho_ten: Optional[str] = None
    nam_sinh: Optional[str] = None
    don_vi_id: Optional[int] = None
    chuc_vu_id: Optional[int] = None
    email: Optional[str] = None
    so_dien_thoai: Optional[str] = None
    la_admin: Optional[bool] = None
    la_tccb: Optional[bool] = None
    trang_thai: Optional[bool] = None

class SanPhamCreate(BaseModel):
    ma_san_pham: str
    ten_san_pham: str
    don_vi_tinh: Optional[str] = None
    thoi_gian_thuc_hien: int = 60
    thu_tu: int = 0

class SanPhamUpdate(BaseModel):
    ten_san_pham: Optional[str] = None
    don_vi_tinh: Optional[str] = None
    thoi_gian_thuc_hien: Optional[int] = None
    thu_tu: Optional[int] = None
    trang_thai: Optional[bool] = None

class HeSoCreate(BaseModel):
    san_pham_id: int
    muc_do_id: int
    he_so: float

class HeSoUpdate(BaseModel):
    he_so: Optional[float] = None
    trang_thai: Optional[bool] = None

# ===== DASHBOARD =====
@router.get("/dashboard")
async def get_dashboard(db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    total = (await db.execute(select(func.count(NguoiDung.id)))).scalar()
    active = (await db.execute(select(func.count(NguoiDung.id)).where(NguoiDung.trang_thai == True))).scalar()
    products = (await db.execute(select(func.count(SanPham.id)).where(SanPham.trang_thai == True))).scalar()
    coefficients = (await db.execute(select(func.count(HeSo.id)).where(HeSo.trang_thai == True))).scalar()
    return {"tong_nguoi_dung": total, "nguoi_dung_hoat_dong": active, "tong_san_pham": products, "tong_he_so": coefficients}

# ===== NGƯỜI DÙNG =====
@router.get("/nguoi-dung")
async def get_nguoi_dung(
    don_vi_id: Optional[int] = None, search: Optional[str] = None,
    skip: int = 0, limit: int = 100,
    db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)
):
    query = select(NguoiDung)
    if don_vi_id:
        query = query.where(NguoiDung.don_vi_id == don_vi_id)
    if search:
        query = query.where((NguoiDung.ma_cong_chuc.ilike(f"%{search}%")) | (NguoiDung.ho_ten.ilike(f"%{search}%")))
    query = query.order_by(NguoiDung.id).offset(skip).limit(limit)
    
    result = await db.execute(query)
    users = result.scalars().all()
    
    response = []
    for user in users:
        don_vi_ten, chuc_vu_ten = "", ""
        if user.don_vi_id:
            dv = (await db.execute(select(DonVi).where(DonVi.id == user.don_vi_id))).scalar_one_or_none()
            if dv: don_vi_ten = dv.ten_don_vi
        if user.chuc_vu_id:
            cv = (await db.execute(select(ChucVu).where(ChucVu.id == user.chuc_vu_id))).scalar_one_or_none()
            if cv: chuc_vu_ten = cv.ten_chuc_vu
        response.append({
            "id": user.id, "ma_cong_chuc": user.ma_cong_chuc, "ho_ten": user.ho_ten,
            "nam_sinh": user.nam_sinh, "don_vi_id": user.don_vi_id, "don_vi_ten": don_vi_ten,
            "chuc_vu_id": user.chuc_vu_id, "chuc_vu_ten": chuc_vu_ten, "email": user.email,
            "so_dien_thoai": user.so_dien_thoai, "la_admin": user.la_admin, "la_tccb": user.la_tccb,
            "trang_thai": user.trang_thai,
        })
    return response

@router.post("/nguoi-dung")
async def create_nguoi_dung(data: NguoiDungCreate, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    existing = (await db.execute(select(NguoiDung).where(NguoiDung.ma_cong_chuc == data.ma_cong_chuc))).scalar_one_or_none()
    if existing:
        raise HTTPException(status_code=400, detail="Mã công chức đã tồn tại")
    
    user = NguoiDung(
        ma_cong_chuc=data.ma_cong_chuc, mat_khau=get_password_hash("123456"),
        ho_ten=data.ho_ten, nam_sinh=data.nam_sinh, don_vi_id=data.don_vi_id,
        chuc_vu_id=data.chuc_vu_id, email=data.email, so_dien_thoai=data.so_dien_thoai,
        la_admin=data.la_admin, la_tccb=data.la_tccb, trang_thai=True
    )
    db.add(user)
    await db.commit()
    await db.refresh(user)
    return {"message": "Thêm người dùng thành công", "id": user.id}

@router.put("/nguoi-dung/{id}")
async def update_nguoi_dung(id: int, data: NguoiDungUpdate, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    user = (await db.execute(select(NguoiDung).where(NguoiDung.id == id))).scalar_one_or_none()
    if not user:
        raise HTTPException(status_code=404, detail="Không tìm thấy người dùng")
    
    for field, value in data.dict(exclude_unset=True).items():
        setattr(user, field, value)
    await db.commit()
    return {"message": "Cập nhật thành công"}

@router.post("/nguoi-dung/{id}/reset-password")
async def reset_password(id: int, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    user = (await db.execute(select(NguoiDung).where(NguoiDung.id == id))).scalar_one_or_none()
    if not user:
        raise HTTPException(status_code=404, detail="Không tìm thấy người dùng")
    user.mat_khau = get_password_hash("123456")
    await db.commit()
    return {"message": "Đã reset mật khẩu về 123456"}

@router.delete("/nguoi-dung/{id}")
async def delete_nguoi_dung(id: int, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    user = (await db.execute(select(NguoiDung).where(NguoiDung.id == id))).scalar_one_or_none()
    if not user:
        raise HTTPException(status_code=404, detail="Không tìm thấy người dùng")
    if user.la_admin and user.ma_cong_chuc == "admin":
        raise HTTPException(status_code=400, detail="Không thể xóa tài khoản admin gốc")
    user.trang_thai = False
    await db.commit()
    return {"message": "Đã khóa tài khoản"}

# ===== SẢN PHẨM =====
@router.get("/san-pham")
async def get_san_pham(db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    result = await db.execute(select(SanPham).order_by(SanPham.thu_tu))
    return result.scalars().all()

@router.post("/san-pham")
async def create_san_pham(data: SanPhamCreate, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    existing = (await db.execute(select(SanPham).where(SanPham.ma_san_pham == data.ma_san_pham))).scalar_one_or_none()
    if existing:
        raise HTTPException(status_code=400, detail="Mã sản phẩm đã tồn tại")
    
    sp = SanPham(**data.dict(), trang_thai=True)
    db.add(sp)
    await db.commit()
    await db.refresh(sp)
    return {"message": "Thêm sản phẩm thành công", "id": sp.id}

@router.put("/san-pham/{id}")
async def update_san_pham(id: int, data: SanPhamUpdate, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    sp = (await db.execute(select(SanPham).where(SanPham.id == id))).scalar_one_or_none()
    if not sp:
        raise HTTPException(status_code=404, detail="Không tìm thấy sản phẩm")
    for field, value in data.dict(exclude_unset=True).items():
        setattr(sp, field, value)
    await db.commit()
    return {"message": "Cập nhật thành công"}

@router.delete("/san-pham/{id}")
async def delete_san_pham(id: int, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    sp = (await db.execute(select(SanPham).where(SanPham.id == id))).scalar_one_or_none()
    if not sp:
        raise HTTPException(status_code=404, detail="Không tìm thấy sản phẩm")
    sp.trang_thai = False
    await db.commit()
    return {"message": "Đã xóa sản phẩm"}

# ===== HỆ SỐ =====
@router.get("/he-so")
async def get_he_so(san_pham_id: Optional[int] = None, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    query = select(HeSo).where(HeSo.trang_thai == True)
    if san_pham_id:
        query = query.where(HeSo.san_pham_id == san_pham_id)
    
    result = await db.execute(query)
    he_so_list = result.scalars().all()
    
    response = []
    for hs in he_so_list:
        sp = (await db.execute(select(SanPham).where(SanPham.id == hs.san_pham_id))).scalar_one_or_none()
        md = (await db.execute(select(MucDo).where(MucDo.id == hs.muc_do_id))).scalar_one_or_none()
        response.append({
            "id": hs.id, "san_pham_id": hs.san_pham_id, "san_pham_ten": sp.ten_san_pham if sp else "",
            "muc_do_id": hs.muc_do_id, "muc_do_ten": md.ten_muc_do if md else "", "he_so": float(hs.he_so),
        })
    return response

@router.post("/he-so")
async def create_he_so(data: HeSoCreate, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    existing = (await db.execute(select(HeSo).where(and_(HeSo.san_pham_id == data.san_pham_id, HeSo.muc_do_id == data.muc_do_id)))).scalar_one_or_none()
    if existing:
        raise HTTPException(status_code=400, detail="Hệ số cho sản phẩm và mức độ này đã tồn tại")
    
    hs = HeSo(**data.dict(), trang_thai=True)
    db.add(hs)
    await db.commit()
    await db.refresh(hs)
    return {"message": "Thêm hệ số thành công", "id": hs.id}

@router.put("/he-so/{id}")
async def update_he_so(id: int, data: HeSoUpdate, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    hs = (await db.execute(select(HeSo).where(HeSo.id == id))).scalar_one_or_none()
    if not hs:
        raise HTTPException(status_code=404, detail="Không tìm thấy hệ số")
    for field, value in data.dict(exclude_unset=True).items():
        setattr(hs, field, value)
    await db.commit()
    return {"message": "Cập nhật thành công"}

@router.delete("/he-so/{id}")
async def delete_he_so(id: int, db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    hs = (await db.execute(select(HeSo).where(HeSo.id == id))).scalar_one_or_none()
    if not hs:
        raise HTTPException(status_code=404, detail="Không tìm thấy hệ số")
    await db.delete(hs)
    await db.commit()
    return {"message": "Đã xóa hệ số"}

# ===== DANH MỤC =====
@router.get("/danh-muc/don-vi")
async def get_don_vi(db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    result = await db.execute(select(DonVi).where(DonVi.trang_thai == True).order_by(DonVi.thu_tu))
    return result.scalars().all()

@router.get("/danh-muc/chuc-vu")
async def get_chuc_vu(db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    result = await db.execute(select(ChucVu).where(ChucVu.trang_thai == True).order_by(ChucVu.thu_tu))
    return result.scalars().all()

@router.get("/danh-muc/muc-do")
async def get_muc_do(db: AsyncSession = Depends(get_db), admin: NguoiDung = Depends(get_admin_user)):
    result = await db.execute(select(MucDo).where(MucDo.trang_thai == True).order_by(MucDo.thu_tu))
    return result.scalars().all()
