from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy import select
from pydantic import BaseModel
from ..core.database import get_db
from ..core.security import verify_password, get_password_hash, create_access_token, get_current_user
from ..models import NguoiDung, DonVi, ChucVu

router = APIRouter(prefix="/auth", tags=["Authentication"])

class LoginRequest(BaseModel):
    ma_cong_chuc: str
    mat_khau: str

class ChangePasswordRequest(BaseModel):
    mat_khau_cu: str
    mat_khau_moi: str

async def get_user_info(user: NguoiDung, db: AsyncSession):
    don_vi_ten, chuc_vu_ten = "", ""
    la_lanh_dao, cap_lanh_dao = False, 0
    
    if user.don_vi_id:
        result = await db.execute(select(DonVi).where(DonVi.id == user.don_vi_id))
        don_vi = result.scalar_one_or_none()
        if don_vi:
            don_vi_ten = don_vi.ten_don_vi
    
    if user.chuc_vu_id:
        result = await db.execute(select(ChucVu).where(ChucVu.id == user.chuc_vu_id))
        chuc_vu = result.scalar_one_or_none()
        if chuc_vu:
            chuc_vu_ten = chuc_vu.ten_chuc_vu
            la_lanh_dao = chuc_vu.la_lanh_dao
            cap_lanh_dao = chuc_vu.cap_lanh_dao
    
    return {
        "id": user.id,
        "ma_cong_chuc": user.ma_cong_chuc,
        "ho_ten": user.ho_ten,
        "nam_sinh": user.nam_sinh,
        "don_vi_id": user.don_vi_id,
        "don_vi_ten": don_vi_ten,
        "chuc_vu_id": user.chuc_vu_id,
        "chuc_vu_ten": chuc_vu_ten,
        "la_lanh_dao": la_lanh_dao,
        "cap_lanh_dao": cap_lanh_dao,
        "la_admin": user.la_admin,
        "la_tccb": user.la_tccb,
    }

@router.post("/login")
async def login(request: LoginRequest, db: AsyncSession = Depends(get_db)):
    result = await db.execute(select(NguoiDung).where(NguoiDung.ma_cong_chuc == request.ma_cong_chuc))
    user = result.scalar_one_or_none()
    
    if not user:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Mã công chức không tồn tại")
    if not user.trang_thai:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Tài khoản đã bị khóa")
    if not verify_password(request.mat_khau, user.mat_khau):
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Mật khẩu không đúng")
    
    access_token = create_access_token(data={"sub": str(user.id)})
    user_info = await get_user_info(user, db)
    
    return {"access_token": access_token, "token_type": "bearer", "user": user_info}

@router.get("/me")
async def get_me(current_user: NguoiDung = Depends(get_current_user), db: AsyncSession = Depends(get_db)):
    return await get_user_info(current_user, db)

@router.post("/change-password")
async def change_password(request: ChangePasswordRequest, current_user: NguoiDung = Depends(get_current_user), db: AsyncSession = Depends(get_db)):
    if not verify_password(request.mat_khau_cu, current_user.mat_khau):
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Mật khẩu cũ không đúng")
    if len(request.mat_khau_moi) < 6:
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Mật khẩu mới phải có ít nhất 6 ký tự")
    
    current_user.mat_khau = get_password_hash(request.mat_khau_moi)
    await db.commit()
    return {"message": "Đổi mật khẩu thành công"}
