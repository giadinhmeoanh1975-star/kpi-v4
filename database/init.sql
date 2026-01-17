-- =====================================================
-- HỆ THỐNG QUẢN LÝ KPI - CHI CỤC HẢI QUAN KHU VỰC VIII
-- Database Schema - Version 4.0
-- =====================================================

-- Bảng đơn vị
CREATE TABLE dm_don_vi (
    id SERIAL PRIMARY KEY,
    ma_don_vi VARCHAR(20) UNIQUE NOT NULL,
    ten_don_vi VARCHAR(200) NOT NULL,
    loai_don_vi VARCHAR(30),
    thu_tu INT DEFAULT 0,
    trang_thai BOOLEAN DEFAULT TRUE,
    ngay_tao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng chức vụ
CREATE TABLE dm_chuc_vu (
    id SERIAL PRIMARY KEY,
    ma_chuc_vu VARCHAR(20) UNIQUE NOT NULL,
    ten_chuc_vu VARCHAR(100) NOT NULL,
    la_lanh_dao BOOLEAN DEFAULT FALSE,
    cap_lanh_dao INT DEFAULT 0,
    thu_tu INT DEFAULT 0,
    trang_thai BOOLEAN DEFAULT TRUE
);

-- Bảng sản phẩm chuẩn
CREATE TABLE dm_san_pham (
    id SERIAL PRIMARY KEY,
    ma_san_pham VARCHAR(20) UNIQUE NOT NULL,
    ten_san_pham VARCHAR(300) NOT NULL,
    don_vi_tinh VARCHAR(50),
    thoi_gian_thuc_hien INT DEFAULT 60,
    thu_tu INT DEFAULT 0,
    trang_thai BOOLEAN DEFAULT TRUE,
    ngay_tao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng mức độ
CREATE TABLE dm_muc_do (
    id SERIAL PRIMARY KEY,
    ma_muc_do VARCHAR(20) UNIQUE NOT NULL,
    ten_muc_do VARCHAR(100) NOT NULL,
    cho_phep_tu_nhap_he_so BOOLEAN DEFAULT FALSE,
    thu_tu INT DEFAULT 0,
    trang_thai BOOLEAN DEFAULT TRUE
);

-- Bảng hệ số quy đổi
CREATE TABLE dm_he_so (
    id SERIAL PRIMARY KEY,
    san_pham_id INT REFERENCES dm_san_pham(id) ON DELETE CASCADE,
    muc_do_id INT REFERENCES dm_muc_do(id) ON DELETE CASCADE,
    he_so DECIMAL(10, 2) NOT NULL,
    trang_thai BOOLEAN DEFAULT TRUE,
    UNIQUE(san_pham_id, muc_do_id)
);

-- Bảng người dùng
CREATE TABLE nguoi_dung (
    id SERIAL PRIMARY KEY,
    ma_cong_chuc VARCHAR(30) UNIQUE NOT NULL,
    mat_khau VARCHAR(255) NOT NULL,
    ho_ten VARCHAR(200) NOT NULL,
    nam_sinh VARCHAR(30),
    don_vi_id INT REFERENCES dm_don_vi(id),
    chuc_vu_id INT REFERENCES dm_chuc_vu(id),
    email VARCHAR(100),
    so_dien_thoai VARCHAR(20),
    la_admin BOOLEAN DEFAULT FALSE,
    la_tccb BOOLEAN DEFAULT FALSE,
    trang_thai BOOLEAN DEFAULT TRUE,
    ngay_tao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ngay_cap_nhat TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng kê khai công việc
CREATE TABLE ke_khai (
    id SERIAL PRIMARY KEY,
    nguoi_dung_id INT NOT NULL REFERENCES nguoi_dung(id),
    don_vi_id INT REFERENCES dm_don_vi(id),
    ngay_thuc_hien DATE NOT NULL,
    san_pham_id INT NOT NULL REFERENCES dm_san_pham(id),
    muc_do_id INT NOT NULL REFERENCES dm_muc_do(id),
    so_luong INT NOT NULL DEFAULT 1,
    he_so DECIMAL(10,2) NOT NULL,
    diem_quy_doi DECIMAL(10,2) NOT NULL,
    mo_ta TEXT,
    trang_thai VARCHAR(20) DEFAULT 'cho_duyet',
    nguoi_duyet_id INT REFERENCES nguoi_dung(id),
    ngay_duyet TIMESTAMP,
    ly_do_tu_choi TEXT,
    ngay_tao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ngay_cap_nhat TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =====================================================
-- INSERT DỮ LIỆU MẶC ĐỊNH
-- =====================================================

-- Đơn vị
INSERT INTO dm_don_vi (ma_don_vi, ten_don_vi, loai_don_vi, thu_tu) VALUES
('LDCC', 'Lãnh đạo Chi cục', 'Lãnh đạo', 0),
('VP', 'Văn phòng', 'Phòng', 1),
('TCCB', 'Phòng Tổ chức cán bộ', 'Phòng', 2),
('NVHQ', 'Phòng Nghiệp vụ', 'Phòng', 3),
('QLRR', 'Phòng Quản lý rủi ro', 'Phòng', 4),
('CNTT', 'Phòng CNTT', 'Phòng', 5),
('KSHQ', 'Đội Kiểm soát Hải quan', 'Đội', 6),
('PTKTSTQ', 'Đội Phúc tập và KTSTQ', 'Đội', 7),
('HGAI', 'Hải quan Hòn Gai', 'Đội/Trạm', 8),
('CPHA', 'Hải quan Cẩm Phả', 'Đội/Trạm', 9),
('VGIA', 'Hải quan Vạn Gia', 'Đội/Trạm', 10),
('MCAI', 'Hải quan Móng Cái', 'Đội/Trạm', 11),
('HMO', 'Hải quan Hoành Mô', 'Đội/Trạm', 12),
('BPS', 'Hải quan Bắc Phong Sinh', 'Đội/Trạm', 13);

-- Chức vụ (cap_lanh_dao: 0=CC, 1=Phó TP/ĐT, 2=TP/ĐT, 3=Phó CCT, 4=CCT)
INSERT INTO dm_chuc_vu (ma_chuc_vu, ten_chuc_vu, la_lanh_dao, cap_lanh_dao, thu_tu) VALUES
('CCT', 'Chi cục trưởng', TRUE, 4, 1),
('PCCT', 'Phó Chi cục trưởng', TRUE, 3, 2),
('CVP', 'Chánh Văn phòng', TRUE, 2, 3),
('PVP', 'Phó Chánh Văn phòng', TRUE, 1, 4),
('TP', 'Trưởng phòng', TRUE, 2, 5),
('PTP', 'Phó Trưởng phòng', TRUE, 1, 6),
('DT', 'Đội trưởng', TRUE, 2, 7),
('PDT', 'Phó Đội trưởng', TRUE, 1, 8),
('CC', 'Công chức', FALSE, 0, 9),
('KTV', 'Kiểm tra viên', FALSE, 0, 10),
('NV', 'Nhân viên', FALSE, 0, 11),
('HD', 'Hợp đồng 111', FALSE, 0, 12);

-- Sản phẩm chuẩn
INSERT INTO dm_san_pham (ma_san_pham, ten_san_pham, don_vi_tinh, thoi_gian_thuc_hien, thu_tu) VALUES
('SP1', 'Văn bản hành chính', 'Văn bản', 60, 1),
('SP2', 'TK được kiểm tra chi tiết hồ sơ', 'Tờ khai', 10, 2),
('SP3', 'Giờ trực', 'Giờ', 60, 3),
('SP4', 'Giờ tuần tra kiểm soát', 'Giờ', 60, 4),
('SP5', 'TK được kiểm hóa', 'Tờ khai', 10, 5);

-- Mức độ
INSERT INTO dm_muc_do (ma_muc_do, ten_muc_do, cho_phep_tu_nhap_he_so, thu_tu) VALUES
('MD1', 'Giản đơn', FALSE, 1),
('MD2', 'Thông thường', FALSE, 2),
('MD3', 'Nâng cao', FALSE, 3),
('MD4', 'Phức tạp', FALSE, 4),
('MD5', 'Đặc thù', TRUE, 5);

-- Hệ số quy đổi
INSERT INTO dm_he_so (san_pham_id, muc_do_id, he_so) VALUES
(1, 1, 1), (1, 2, 2), (1, 3, 4), (1, 4, 8),
(2, 1, 1), (2, 2, 2), (2, 3, 4), (2, 4, 6),
(3, 1, 1),
(4, 1, 1),
(5, 1, 6), (5, 2, 12), (5, 3, 18), (5, 4, 36);

-- Tài khoản Admin (mật khẩu: 123456)
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, la_admin, trang_thai)
VALUES ('admin', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Quản trị viên', TRUE, TRUE);

-- =====================================================
-- INDEX
-- =====================================================
CREATE INDEX idx_nguoi_dung_don_vi ON nguoi_dung(don_vi_id);
CREATE INDEX idx_nguoi_dung_chuc_vu ON nguoi_dung(chuc_vu_id);
CREATE INDEX idx_he_so_san_pham ON dm_he_so(san_pham_id);
CREATE INDEX idx_ke_khai_nguoi_dung ON ke_khai(nguoi_dung_id);
CREATE INDEX idx_ke_khai_don_vi ON ke_khai(don_vi_id);
CREATE INDEX idx_ke_khai_ngay ON ke_khai(ngay_thuc_hien);
CREATE INDEX idx_ke_khai_trang_thai ON ke_khai(trang_thai);
