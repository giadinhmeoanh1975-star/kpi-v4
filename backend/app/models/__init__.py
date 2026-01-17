from sqlalchemy import Column, String, Integer, Boolean, DateTime, Date, ForeignKey, DECIMAL, Text
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func
from app.core.database import Base

class DonVi(Base):
    __tablename__ = "dm_don_vi"
    id = Column(Integer, primary_key=True)
    ma_don_vi = Column(String(20), unique=True, nullable=False)
    ten_don_vi = Column(String(200), nullable=False)
    loai_don_vi = Column(String(30))
    thu_tu = Column(Integer, default=0)
    trang_thai = Column(Boolean, default=True)
    ngay_tao = Column(DateTime, default=func.now())

class ChucVu(Base):
    __tablename__ = "dm_chuc_vu"
    id = Column(Integer, primary_key=True)
    ma_chuc_vu = Column(String(20), unique=True, nullable=False)
    ten_chuc_vu = Column(String(100), nullable=False)
    la_lanh_dao = Column(Boolean, default=False)
    cap_lanh_dao = Column(Integer, default=0)
    thu_tu = Column(Integer, default=0)
    trang_thai = Column(Boolean, default=True)

class SanPham(Base):
    __tablename__ = "dm_san_pham"
    id = Column(Integer, primary_key=True)
    ma_san_pham = Column(String(20), unique=True, nullable=False)
    ten_san_pham = Column(String(300), nullable=False)
    don_vi_tinh = Column(String(50))
    thoi_gian_thuc_hien = Column(Integer, default=60)
    thu_tu = Column(Integer, default=0)
    trang_thai = Column(Boolean, default=True)
    ngay_tao = Column(DateTime, default=func.now())

class MucDo(Base):
    __tablename__ = "dm_muc_do"
    id = Column(Integer, primary_key=True)
    ma_muc_do = Column(String(20), unique=True, nullable=False)
    ten_muc_do = Column(String(100), nullable=False)
    cho_phep_tu_nhap_he_so = Column(Boolean, default=False)
    thu_tu = Column(Integer, default=0)
    trang_thai = Column(Boolean, default=True)

class HeSo(Base):
    __tablename__ = "dm_he_so"
    id = Column(Integer, primary_key=True)
    san_pham_id = Column(Integer, ForeignKey("dm_san_pham.id", ondelete="CASCADE"))
    muc_do_id = Column(Integer, ForeignKey("dm_muc_do.id", ondelete="CASCADE"))
    he_so = Column(DECIMAL(10, 2), nullable=False)
    trang_thai = Column(Boolean, default=True)
    san_pham = relationship("SanPham")
    muc_do = relationship("MucDo")

class NguoiDung(Base):
    __tablename__ = "nguoi_dung"
    id = Column(Integer, primary_key=True)
    ma_cong_chuc = Column(String(30), unique=True, nullable=False)
    mat_khau = Column(String(255), nullable=False)
    ho_ten = Column(String(200), nullable=False)
    nam_sinh = Column(String(30))
    don_vi_id = Column(Integer, ForeignKey("dm_don_vi.id"))
    chuc_vu_id = Column(Integer, ForeignKey("dm_chuc_vu.id"))
    email = Column(String(100))
    so_dien_thoai = Column(String(20))
    la_admin = Column(Boolean, default=False)
    la_tccb = Column(Boolean, default=False)
    trang_thai = Column(Boolean, default=True)
    ngay_tao = Column(DateTime, default=func.now())
    ngay_cap_nhat = Column(DateTime, default=func.now(), onupdate=func.now())
    don_vi = relationship("DonVi")
    chuc_vu = relationship("ChucVu")

class KeKhai(Base):
    __tablename__ = "ke_khai"
    id = Column(Integer, primary_key=True)
    nguoi_dung_id = Column(Integer, ForeignKey("nguoi_dung.id"), nullable=False)
    don_vi_id = Column(Integer, ForeignKey("dm_don_vi.id"))
    ngay_thuc_hien = Column(Date, nullable=False)
    san_pham_id = Column(Integer, ForeignKey("dm_san_pham.id"), nullable=False)
    muc_do_id = Column(Integer, ForeignKey("dm_muc_do.id"), nullable=False)
    so_luong = Column(Integer, default=1, nullable=False)
    he_so = Column(DECIMAL(10,2), nullable=False)
    diem_quy_doi = Column(DECIMAL(10,2), nullable=False)
    mo_ta = Column(Text)
    trang_thai = Column(String(20), default='cho_duyet')
    nguoi_duyet_id = Column(Integer, ForeignKey("nguoi_dung.id"))
    ngay_duyet = Column(DateTime)
    ly_do_tu_choi = Column(Text)
    ngay_tao = Column(DateTime, default=func.now())
    ngay_cap_nhat = Column(DateTime, default=func.now(), onupdate=func.now())
    
    nguoi_dung = relationship("NguoiDung", foreign_keys=[nguoi_dung_id])
    don_vi = relationship("DonVi")
    san_pham = relationship("SanPham")
    muc_do = relationship("MucDo")
    nguoi_duyet = relationship("NguoiDung", foreign_keys=[nguoi_duyet_id])
