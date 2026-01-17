-- Insert CBCC data (Password: 123456)
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0224', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Quốc Hưng', '29/10/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'LDCC'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CCT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0224');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0565', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Ngọc Lợi', '02/9/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'LDCC'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PCCT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0565');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0119', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Tùng Dương', '18/04/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'LDCC'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PCCT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0119');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0479', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Cảnh Thắng', '12/02/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'LDCC'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PCCT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0479');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0097', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Tống Thị Thái Hà', '27/03/1980',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CVP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0097');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0238', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quốc Thịnh', '04/06/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PVP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0238');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0049', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Liên', '11/04/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PVP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0049');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0062', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đào Kim Oanh', '18/12/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PVP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0062');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0007', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Kim Long', '08/12/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0007');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0450', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Thị Hằng', '22/8/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0450');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0010', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Thị Cẩm Linh', '10/10/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0010');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0013', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Xuân Hương', '20/04/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0013');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0212', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Bích Diệp', '1987-11-25 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0212');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0015', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trịnh Thị Thu', '18/10/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0015');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0012', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thanh Vân 1990', '26/10/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0012');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0592', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thanh Ngân', '1999-11-12 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0592');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0135', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Khánh Ninh', '30/11/1976',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0135');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0394', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lại Thị Hồng Hoa', '22/09/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0394');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0390', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Hồng Quang', '08/08/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0390');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0101', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Vân Anh', '30/01/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0101');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0059', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phan Thị Thu Trang', '1991-11-14 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0059');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0368', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Quỳnh Trang', '16/02/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0368');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0599', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Duy Bình', '27/9/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0599');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0585', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Đình Lộc', '26/03/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0585');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0114', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Đức Hân', '10/12/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0114');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0359', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Minh Tuấn 1986', '04/07/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0359');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0020', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Mai Đức Tâm', '09/01/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0020');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0029', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thanh Tâm', '1990-03-01 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0029');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0019', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Anh Luận', '24/09/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0019');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0024', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Thanh Huyền', '20/08/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0024');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0026', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Chí Nguyện', '1985-10-08 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0026');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0561', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đồng Thị Kim Thu', '1985-10-17 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0561');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0025', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Tuyết Mai', '14/11/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0025');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0030', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Văn Sĩ', '16/04/1966',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0030');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0371', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Tuấn Duy', '18/10/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0371');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0027', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Thảo', '1992-12-03 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0027');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0477', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Công Điển', '01/01/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0477');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0031', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Văn Lưu', '28/01/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0031');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0028', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Thị Huyền 1980', '1980-05-24 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0028');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0177', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Minh Quý', '1988-08-22 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0177');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0557', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lương Thị Vui', '04/09/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0557');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0558', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Minh Chiến', '06/01/2000',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0558');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0032', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Tuấn Hải', '16/09/1991',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0032');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0610', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Hiên', '26/8/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0610');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0617', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Tạ Văn Khanh', '1981-04-26 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VP'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0617');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0005', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Võ Hồng Chung', '19/10/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'TP'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0005');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0035', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thuý Nga 1978', '26/04/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PTP'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0035');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0240', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Mai Thế Dương', '25/10/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PTP'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0240');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0350', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Thị Thu Hà', '28/02/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0350');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0036', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Quỳnh Mai', '19/12/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0036');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0312', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Minh Trang', '1991-05-09 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0312');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0322', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phùng Thế Phương', '1984-01-07 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0322');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0211', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Dương Thanh Hà', '07/09/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0211');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0044', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Tạ Thị Hiền', '10/05/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0044');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0042', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Hồng Chinh', '13/12/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0042');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0321', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Quang Huy', '1991-01-13 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0321');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0403', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Khánh Hoàng', '11/09/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0403');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0041', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đào Duy Phương', '1987-12-12 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0041');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0591', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Thị Hoa', '04/09/1996',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'TCCB'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    TRUE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0591');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0061', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đinh Việt Dũng', '01/08/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'TP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0061');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0227', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Dương', '12/07/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PTP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0227');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0129', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thị Thanh Thuỷ', '15/10/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PTP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0129');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0075', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thuý Nga 1973', '26/10/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PTP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0075');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0439', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Tiến Đạt', '22/01/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0439');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0052', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Châu Cương', '16/12/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0052');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0078', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trương Văn Quân', '23/04/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0078');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0066', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lý Thị Nhiên', '18/10/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0066');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0621', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Minh Hoàng', '1994-11-14 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0621');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0407', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Sâm', '26/03/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0407');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0584', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Minh Cường', '1995-05-10 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0584');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0589', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Bá Thành', '23/07/2001',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0589');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0552', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thanh Tùng', '23/8/1992',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0552');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0310', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Hằng', '28/04/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0310');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0306', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Đình Toản', '10/12/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0306');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0173', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Hữu Tuấn', '1990-05-11 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0173');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0102', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Dương Hương Giang', '06/09/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0102');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0072', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Hồng', '14/07/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0072');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0490', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Hữu Phong', '15/02/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'NVHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0490');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0452', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Huy Đông', '28/08/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'QLRR'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'TP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0452');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0098', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quốc Bình', '28/06/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'QLRR'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PTP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0098');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0063', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thị Hải Ninh', '20/08/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'QLRR'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PTP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0063');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0366', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trịnh Ngọc Hoàng Nam', '29/10/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'QLRR'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0366');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0100', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Minh Đức', '12/9/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'QLRR'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0100');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0262', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thu Hằng', '1990-03-04 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'QLRR'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0262');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0446', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Lan Hương 1989', '05/08/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'QLRR'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0446');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0594', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phan Thị Ngọc Hoàn', '05/12/2000',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'QLRR'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0594');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0431', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Quý Hưng', '01/09/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'TP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0431');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0116', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trương Ngọc Quảng', '02/05/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PTP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0116');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0105', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Quang Huy', '20/10/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PTP'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0105');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0393', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Quang Trung', '04/12/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0393');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0257', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hà Văn Sơn', '01/12/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0257');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0282', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đặng Viết Thành', '03/09/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0282');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0205', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trương Anh Tuấn', '28/08/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0205');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0115', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Văn Tuyển', '12/08/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0115');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0290', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Văn Nam', '23/07/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0290');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0112', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Thị Huyền 1985', '08/08/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0112');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0586', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vi Trung Hiếu', '24/12/2000',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CNTT'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0586');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0231', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thuý Hà', '14/09/1976',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'DT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0231');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0186', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Hanh', '16/09/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0186');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0580', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thế Việt', '10/6/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0580');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0401', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Văn Hào', '26/05/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0401');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0122', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Dương Xuân Lý', '20/12/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0122');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0232', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Ngọc Thạch', '30/09/1964',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0232');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0121', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Mạc Tiến Quân', '27/10/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0121');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0228', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Viết Khoa', '12/03/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0228');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0346', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Đình Trung', '21/03/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0346');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0345', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Thọ', '20/11/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0345');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0124', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trương Việt Dũng', '16/04/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0124');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0482', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quang Huy', '26/04/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0482');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0239', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thanh Dương', '26/05/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0239');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0444', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Văn Hiếu', '21/07/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0444');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0284', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đinh Ngọc Thiệu', '07/07/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0284');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0381', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Thu Thảo', '24/08/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0381');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0458', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Nguyên Hoàn', '15/11/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0458');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0395', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đào Bá An', '1974-08-10 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0395');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0157', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Hải Yến', '08/09/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0157');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0259', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Thị Hòa', '25/10/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0259');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0522', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trịnh Đăng Dung', '1977-04-20 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0522');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0196', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Phòng', '30/10/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0196');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0159', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lưu Thị Loan', '15/05/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0159');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0461', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Sỹ Bình', '17/01/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0461');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0144', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Dương Mạnh Hà', '30/06/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0144');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0492', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Mạnh Hùng', '15/12/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0492');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0365', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đặng Tích Khoa', '21/7/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0365');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0392', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vương Văn Mạnh', '13/11/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0392');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0360', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Hồng Quân', '07/01/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0360');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0464', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Mạnh Hùng 1974', '25/04/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0464');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0266', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Đình Thọ', '03/09/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0266');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0311', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lương Viết Sơn Hà', '28/09/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0311');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0043', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Phạm An Hà', '29/09/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0043');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0086', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Dương Thương', '03/11/1976',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0086');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0093', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Hương', '05/09/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0093');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0087', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đàm Quang Lượng', '18/08/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0087');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0160', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Khanh', '01/06/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0160');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0354', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Mạnh Hà', '3/10/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0354');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0555', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thanh Hồng', '14/01/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0555');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0467', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thu Ngân', '1989-09-20 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0467');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0213', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Vân Trung', '02/09/1976',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0213');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0473', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thị Thanh Vân', '1986-02-09 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0473');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0255', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Việt Thanh', '2/5/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0255');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0278', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Thặng', '20/10/1966',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0278');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0414', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Minh Đức', '11/12/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0414');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0475', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thế Thành', '18/12/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0475');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0562', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Hữu Phong', '1988-11-11 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0562');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0091', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Hoàng Tùng', '31/08/1980',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0091');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0305', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Cao Sơn', '04/07/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0305');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0190', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Duy Khánh', '02/9/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0190');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0208', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thanh Hương', '30/04/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0208');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0288', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trịnh Quang Khoa', '16/05/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0288');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0265', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phùng Văn Chuyển', '14/07/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0265');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0201', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Nhung', '27/09/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0201');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0443', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Hồng Thắm', '15/11/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0443');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0014', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Đình Cương', '25/11/1966',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0014');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0582', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Đức Long', '1983-08-23 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0582');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0554', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Tùng Dương', '08/01/1997',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0554');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0498', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Tuấn Minh', '1976-05-27 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0498');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0313', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Công Hoàn', '9/3/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0313');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0143', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Loan', '18/02/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0143');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0127', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Chí Thái', '19/01/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0127');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0107', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Anh Tuấn 1981', '05/05/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0107');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0349', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Ngọc Thực', '23/09/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0349');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0287', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Vĩnh Hương', '10/09/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0287');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0483', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Đức Tuệ 1985', '07/12/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0483');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0281', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thị Hằng', '30/06/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0281');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0595', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thị Khánh Linh', '08/05/1999',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0595');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0597', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Nguyên Linh', '28/04/2001',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0597');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0330', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phan Thanh Nguyên', '15/05/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0330');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0500', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Đình Thảo', '26/7/1991',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0500');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0178', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Quang Long', '27/08/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0178');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0183', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thái Hưng', '08/12/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0183');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0181', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Thêu', '10/11/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0181');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0175', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Ngọc Hải', '22/12/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0175');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0182', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phan Thị Thương', '1992-11-20 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0182');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0184', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Đạt', '1978-12-23 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0184');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0615', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Trung Hiếu', '1992-09-03 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0615');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0179', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Hồng Thảo', '08/09/1976',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HGAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0179');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0073', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phùng Thị Nguyên Hạnh', '22/05/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'DT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0073');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0084', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Minh', '07/01/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0084');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0106', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quang Chinh', '15/08/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0106');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0454', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Quang Tùng', '23/02/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0454');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0241', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Việt Dũng', '08/08/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0241');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0405', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Việt Đức', '04/09/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0405');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0011', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thu Trang', '22/11/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0011');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0054', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Minh Dũng', '4/8/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0054');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0294', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Ngọc Đức', '18/07/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0294');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0197', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Nghĩa Long', '16/06/1966',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0197');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0352', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hồ Văn Hoàn', '15/05/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0352');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0363', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vương Kiên Trung', '02/07/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0363');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0202', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Hồng Trường', '17/10/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0202');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0167', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Thế An', '07/01/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0167');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0417', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Vũ Hải', '11/06/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0417');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0251', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Khắc Trung', '19/10/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0251');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0411', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Huy Hoàng', '28/08/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0411');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0203', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Mạnh Hùng', '01/02/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0203');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0068', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Mai Anh', '1991-08-29 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0068');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0449', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Bích Diệp', '12/6/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0449');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0466', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Trung Kiên', '13/8/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0466');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0263', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Trang', '29/10/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0263');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0598', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thị Thu Hiền 1989', '20/9/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0598');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0546', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đặng Hoàng Sơn', '19/6/1996',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0546');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0550', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Huyên', '22/9/1994',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0550');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0295', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thế Tuấn', '08/11/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0295');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0593', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Duy Tài', '31/08/2001',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0593');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0588', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vương Thị Thoa', '03/7/1991',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0588');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0221', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trương Thị Bình', '14/05/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0221');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0220', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Viết Cường 1971', '26/4/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0220');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0487', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Hiến', '14/04/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0487');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0420', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Ngọc Hà', '28/05/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0420');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0222', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Tùng', '4/7/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0222');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ - 0223', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hà Thị Kim Thanh', '21/11/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ - 0223');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0604', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Mai Anh', '18/4/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0604');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0603', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Khánh Chi', '1978-01-10 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0603');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0469', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Lê Thế Anh', '22/12/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0469');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0533', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Văn Hiệu', '07/09/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0533');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0602', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Anh Dũng', '2000-10-22 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0602');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0619', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Quốc Văn', '1987-06-05 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'CPHA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0619');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0400', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Xuân Hiền', '23/11/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'DT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0400');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0034', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Ngọc Linh', '26/11/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0034');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0083', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Minh', '28/09/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0083');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0074', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Hồng Hải', '20/04/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0074');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0065', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Trung', '04/10/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0065');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0039', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Minh Tuấn', '08/02/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0039');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0342', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Hồng Chuyên', '30/07/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0342');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0434', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Thị Mỳ', '14/04/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0434');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0120', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vương Trọng Dũng', '10/10/1964',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0120');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0079', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Đình Phúc', '11/12/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0079');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0456', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Bình Minh', '02/02/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0456');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0008', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Tiến Dũng', '04/12/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0008');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0237', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thanh Quang 1975', '10/07/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0237');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0406', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Anh Tuấn', '19/07/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0406');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0484', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Trung Dũng', '08/12/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0484');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0191', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đào Bá Dương', '20/7/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0191');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0125', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hà Quang Huy', '29/11/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0125');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0192', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Anh Tuấn', '10/11/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0192');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0145', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Bích Phong', '04/03/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0145');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0193', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Minh Trung', '10/09/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0193');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0110', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thuý Hà', '21/04/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0110');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0438', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Tiến Dũng 1981', '07/02/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0438');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0457', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Việt', '01/02/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0457');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0485', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Ngọc Vinh', '22/11/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0485');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0130', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Duy Hưng', '17/06/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0130');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0435', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Ngọc Thanh', '12/06/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0435');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0242', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thu Hương', '12/8/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0242');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0243', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Chương', '20/09/1964',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0243');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0448', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thị Hiền', '15/09/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0448');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0077', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Ngọc Vững', '25/01/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0077');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0308', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Phương Thanh', '13/8/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0308');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0152', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Hoà', '26/03/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0152');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0154', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Thị Hà', '30/07/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0154');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0139', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Đức Tuệ 1971', '03/01/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0139');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0496', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Văn Tám', '08/05/1976',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0496');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0069', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đào Thị Hường', '20/09/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0069');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0292', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Hữu Việt', '11/04/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0292');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0209', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Quỳnh Trang', '15/09/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0209');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0474', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lưu Đình Hải', '24/05/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0474');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0168', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Thuỳ Linh', '24/11/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0168');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0194', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Minh Hoàn', '11/10/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0194');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0245', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Thuý Hằng', '02/02/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0245');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0409', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Tuấn Phong', '21/07/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0409');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0521', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Khuất Duy Phiến', '06/13/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0521');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0307', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thạch Dũng', '06/11/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0307');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0207', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thanh Quang 1970', '06/05/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0207');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0447', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Trọng Nghĩa', '07/12/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0447');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0579', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Hoài Linh', '1985-08-25 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0579');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0058', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Hồng Vân', '03/06/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0058');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0166', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Thị Ngọc Thuỷ', '10/12/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0166');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0613', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Xuân Trà', '1993-09-13 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0613');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0495', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Văn Tuyển', '20/10/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0495');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0272', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Đức Linh', '1987-03-12 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0272');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0081', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Mạnh Tú', '14/03/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0081');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0445', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lý Trần Hùng', '26/10/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0445');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0103', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Trọng Khoa', '1985-02-11 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0103');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0204', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Thế Lầu', '16/05/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0204');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0138', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Văn Thoại', '15/10/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0138');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0155', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Quang Anh', '17/5/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0155');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0113', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quốc Anh', '17/09/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0113');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0109', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thị Thu Hiền', '30/06/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0109');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0517', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quang Trung', '20/8/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0517');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0267', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thị Minh', '06/07/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0267');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0053', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Văn Khởi', '18/8/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0053');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0497', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Ngọc Khánh', '19/08/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0497');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0488', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Hiền', '30/11/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0488');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0512', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Phúc Thành', '29/06/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0512');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0080', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Mai Xuân Sơn', '20/08/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0080');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0085', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Tuấn Anh', '01/03/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0085');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0137', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Cao Mười', '05/02/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0137');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0057', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trương Hoàng Lâm', '03/04/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0057');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0553', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Thân Lê Quỳnh Trang', '28/12/1998',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0553');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0038', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Mạc Nguyễn Tú Mai', '25/07/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0038');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0070', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thu Hương', '06/06/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0070');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0215', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Hoa', '1985-11-23 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0215');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0357', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Hải Sơn', '28/02/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0357');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0549', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hứa Hà Lê', '13/9/1994',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0549');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0351', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hà Ngọc Sơn', '29/03/1966',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0351');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0513', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Tiến Vinh', '30/05/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0513');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0355', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đặng Văn Thuấn', '01/09/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0355');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0545', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Thị Bích Diệp', '22/9/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0545');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0151', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Thị Thanh Bình', '22/01/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0151');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0134', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Văn Tiến', '04/05/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0134');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0279', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Thành', '08/02/1966',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0279');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0486', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thị Thu Hà', '24/06/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0486');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0472', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Ngọc Lâm', '21/04/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0472');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0551', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Minh Thắng', '27/11/1998',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0551');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0051', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thị Vân Anh', '26/08/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0051');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0141', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Đình Hoàng', '20/03/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0141');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0076', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Văn Cương', '25/12/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0076');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0459', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Quang Long', '10/03/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0459');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0206', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Công Toàn', '09/11/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0206');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0046', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Thanh Huyền', '1990-08-30 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0046');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0064', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đàm Quang Cường', '07/11/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0064');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0094', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lưu Hải Hà', '11/04/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0094');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0462', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Minh Tuấn 1966', '14/08/1966',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0462');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0055', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Tuyết Hồng', '30/11/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0055');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0463', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Định', '31/12/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0463');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0547', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Ngọc Dũng', '16/11/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0547');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0162', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thanh Dương', '25/01/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0162');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0040', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Việt Toàn', '1977-06-05 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0040');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0410', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đào Duy Hưng', '03/06/1966',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0410');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0468', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Huy Quỳnh', '1973-12-04 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0468');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0560', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Thu Thuỷ', '01/10/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0560');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0476', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Toản', '08/10/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0476');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0465', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Quốc Kiên', '26/01/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0465');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0611', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Văn Mạnh', '21/11/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0611');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0056', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Trọng Lượng', '14/09/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0056');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0133', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thịnh Trường', '21/05/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0133');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0520', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nghiêm Xuân Sơn', '10/04/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0520');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0131', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thuý Chinh', '12/10/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0131');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0493', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Văn Hùng', '25/01/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0493');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0442', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thế Trường', '16/10/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0442');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0324', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Đức Kiên 1991', '28/04/1991',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0324');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0323', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Anh Tuấn 1982', '17/10/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0323');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0325', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Trọng Quỳnh', '1991-12-09 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0325');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0326', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Kiên', '1986-08-05 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0326');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0327', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Hồng Quang', '30/12/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0327');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0332', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thị Phương', '1983-03-02 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0332');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0331', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thu Hường', '24/07/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0331');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0334', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Hưng', '15/11/1980',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0334');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0335', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Quang Quý', '23/07/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0335');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0529', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Đức Quang', '06/05/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0529');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0556', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Xuê', '1987-03-27 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0556');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0502', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Cao Cường', '07/04/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0502');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0333', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Anh', '16/08/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0333');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0336', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Hồng Hải', '25/8/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0336');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0337', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Trường Giang', '1987-01-03 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0337');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0608', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Xuân Anh', '16/01/1992',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0608');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0527', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Bình Dương', '15/06/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0527');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0176', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Hoàn 1995', '1995-10-07 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0176');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0616', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Yến', '1983-12-01 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0616');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0618', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Công Duy', '1995-01-23 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0618');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0017', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Xuân Tùng', '11/07/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'MCAI'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0017');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0375', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đậu Hùng Dương', '06/01/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'DT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0375');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0048', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Hồng Lâm', '26/07/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0048');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0581', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Thế Thăng', '1978-07-12 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0581');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0380', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Vinh Quang', '07/10/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0380');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0123', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Thị Hồng', '12/11/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0123');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0436', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Công Hùng', '04/06/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0436');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0128', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vi Thiệu Hùng', '21/09/1964',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0128');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0188', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Trí Dũng', '18/05/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0188');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0451', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Nguyệt', '26/03/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0451');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0045', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Ngọc Diệp', '06/05/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0045');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0171', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Linh Chi', '05/07/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0171');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0358', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Mai Viết Long', '15/12/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0358');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0200', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Công Thịnh', '04/09/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0200');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0383', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đinh Bá Sơn', '10/07/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0383');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0163', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Xuân Đoàn', '07/03/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0163');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0489', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Trung Kiên 1965', '12/03/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0489');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0271', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Quang Hưng', '25/12/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0271');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0050', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Thuỷ', '18/05/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0050');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0088', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Mạnh Hùng', '11/07/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0088');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0622', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Đỗ Quang Long', '2001-01-16 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0622');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0386', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Hồng Vân', '21/09/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0386');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0348', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bế Sỹ Tâm', '23/05/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0348');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0364', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đinh Văn Long', '13/04/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0364');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0158', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Doãn Việt Hùng', '12/02/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0158');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0153', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Trường Sơn', '16/07/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0153');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0440', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lưu Thị Sen', '20/04/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0440');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0293', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lương Ngọc Thành', '05/05/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0293');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0372', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Chu Thị Tiên', '25/11/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0372');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0373', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Duy Huy', '1991-10-30 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0373');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0370', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Tỉnh', '1982-08-31 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0370');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0021', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Văn Cường', '29/05/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0021');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0374', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Xuân Tùng', '1971-10-11 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0374');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0369', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Viết Cường 1988', '1988-08-14 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0369');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0606', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Duy Nam', '1999-06-11 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0606');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0607', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thị Tình', '25/5/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0607');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0600', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Chu Văn Hà', '23/8/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'HMO'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0600');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0033', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Mạnh Tùng', '31/07/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'DT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0033');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0006', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quang Hưng', '17/03/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0006');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0453', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Đức Hải', '07/05/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0453');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0455', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Chính Đại', '19/08/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0455');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0343', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quang Tùng', '28/02/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0343');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0388', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Thế Anh', '1976-01-06 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0388');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0298', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Lan Hương 1987', '1987-12-26 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0298');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0494', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Chu Thanh Huệ', '1986-04-28 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0494');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0146', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Việt Hưng', '09/11/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0146');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0147', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phan Mạnh Hùng', '02/01/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0147');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0516', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hà Văn Kiểu', '23/09/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0516');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0300', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Đình Hoan', '1980-06-28 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0300');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0249', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Hoàng', '06/01/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0249');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0247', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Minh Nguyệt', '01/04/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0247');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0320', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Trung Kiên 1989', '1989-11-05 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0320');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0108', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Văn Chung', '15/06/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0108');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0398', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Công Mạnh', '18/01/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0398');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0397', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thúy', '08/9/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0397');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0399', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Văn Tuyên', '1984-11-10 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'BPS'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0399');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0082', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Đức Dũng', '05/09/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'DT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0082');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0480', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Biên Hoà', '29/07/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0480');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0187', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Đình Hiến', '20/01/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0187');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0470', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thanh Bình', '02/05/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0470');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0189', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Đỗ Chức', '25/02/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0189');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0339', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Hồng Lâm', '01/03/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0339');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0258', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thanh Xuân', '28/01/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0258');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0296', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Hà', '02/07/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0296');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0210', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Hùng', '26/10/1966',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0210');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0096', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Tiến Nam', '22/10/1985',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0096');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0441', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Dũng Hà', '03/11/1991',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0441');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0253', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lương Thị Hằng', '04/02/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0253');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0347', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Tạ Quang Tư', '01/01/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0347');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0071', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Văn Nam', '10/11/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0071');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0016', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Ngọc Sơn', '1990-08-05 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0016');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0416', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Đình Quang', '13/06/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0416');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0214', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Hoàng Giang', '1990-10-26 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0214');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0301', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Hữu Trung', '22/09/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0301');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0172', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Quốc Phong', '21/01/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0172');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0199', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Anh Tuấn 1984', '07/08/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0199');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0254', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Bá Huân', '15/04/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0254');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0142', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Minh Tuấn', '15/07/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0142');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0385', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Văn Phương', '20/07/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0385');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0314', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Văn Nhân', '22/10/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0314');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0090', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Anh Tuấn 1972', '10/03/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0090');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0277', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Nam', '05/12/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0277');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0563', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Cù Hoàng Việt', '02/02/1980',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0563');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0233', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Trung Kiên1977', '20/01/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0233');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0302', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Ngọc Dương', '24/11/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0302');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0344', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Xuân Lâm', '17/07/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0344');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0510', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Nghĩa Hoằng', '18/06/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0510');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0501', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Mạc Văn Hiểu', '12/02/1973',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0501');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0528', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Công Vương', '03/04/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0528');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0219', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Văn Quân', '1984-05-12 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0219');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0499', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Hiếu', '02/04/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0499');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0532', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Ngọc Tuyên', '18/10/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0532');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0537', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Cường', '1984-12-29 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0537');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0180', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Thị Hương', '21/8/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0180');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0535', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trương Quốc Huy', '28/10/1995',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0535');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0530', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Lương Quyền', '30/5/1988',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0530');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0538', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Mạnh Trung', '1985-10-04 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0538');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0539', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Đình Duẩn', '1981-06-20 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0539');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0174', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Tân', '25/09/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0174');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0429', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đoàn Việt Hùng', '1964-01-09 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0429');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0430', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đào Thị Thu Hoài', '1974-07-04 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0430');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0534', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Ngọc Hải', '28/10/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0534');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0601', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đậu Anh Tuấn', '20/8/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0601');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0503', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Bản', '13/12/1998',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0503');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0505', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần  Văn Giảng', '04/03/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0505');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0531', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Trọng Đạt', '24/10/1980',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'VGIA'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0531');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0185', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Xuân Hiệp', '28/10/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'DT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0185');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0229', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thanh Long', '08/07/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0229');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0118', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Văn Kiên', '19/09/1980',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0118');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0433', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Mạnh Toàn', '20/04/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0433');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0126', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Thanh Hải', '28/08/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0126');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0236', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Trọng Nghĩa', '29/11/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0236');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0437', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Duy Bách', '20/06/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0437');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0264', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Hải', '15/08/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0264');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0244', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Văn Quý', '19/12/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0244');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0273', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Xuân Khánh', '31/08/1987',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0273');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0291', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hồ Thị Hà', '25/7/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0291');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0378', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Chu Minh Phong', '19/02/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0378');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0037', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Quý Đức', '1977-04-11 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0037');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0169', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đinh Ngọc Phượng Hà', '21/11/1979',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0169');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0384', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Mạnh Hùng 1970', '14/09/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0384');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0318', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Duy Khang', '1990-06-04 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0318');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0009', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thanh Vân 1989', '05/09/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0009');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0303', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thanh Hảo', '27/06/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0303');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0583', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Mai Hoàng Anh', '11/4/1992',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0583');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0590', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Đức Tuấn', '20/09/2000',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0590');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0596', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Ngọc Mai', '02/01/2001',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'PTKTSTQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0596');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0338', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Hoàng Tuân', '19/11/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'DT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0338');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0506', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Kiều Văn Ninh', '03/08/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0506');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0481', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Hải Sơn', '17/11/1969',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0481');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0471', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thế Thiện', '04/04/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0471');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0507', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thanh Bình', '23/06/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0507');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0226', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Hà Phong', '27/03/1965',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0226');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0620', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phan Văn Vinh', '1980-10-10 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'PDT'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0620');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0261', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Mạnh Cường 1970', '03/01/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0261');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0095', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thành Luân', '1984-08-29 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0095');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0161', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thơm', '14/12/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0161');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0316', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Cao Văn Phúc', '1974-08-09 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0316');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0491', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Dũng', '1985-06-04 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0491');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0092', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Ngọc Thái', '20/08/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0092');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0317', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Hoàng Sâm', '1972-06-27 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0317');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0587', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Hồng Ngọc', '18/07/2000',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0587');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0408', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Tuyên', '23/09/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0408');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0250', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Minh Tuấn', '21/10/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0250');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0319', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Hùng Sơn', '1986-10-25 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0319');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0195', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Hùng Cường', '09/01/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0195');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0315', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trịnh Trọng Thái', '1983-02-10 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0315');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0508', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Xuân Giáp', '13/09/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0508');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0230', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Quang Vinh', '05/01/1976',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0230');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0140', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Sưởng', '1972-02-07 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0140');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0382', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Khiêm', '16/05/1980',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0382');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0248', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Tiến ánh', '15/11/1968',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0248');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0304', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Thị Hậu', '14/07/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0304');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0309', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đặng Anh Tuấn', '12/04/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0309');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0275', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Minh Sơn', '04/07/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0275');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0252', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Xuân Huynh', '20/04/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0252');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0156', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Hồng Ngọc', '18/11/1980',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0156');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0612', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Tiến Mạnh', '1981-10-27 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0612');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0234', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Hồng Phúc', '11/02/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0234');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0509', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đinh Tiến Minh', '19/01/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0509');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0341', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đặng Ngọc Thanh', '02/06/1971',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0341');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0511', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Chí Cường 1981', '25/11/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0511');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0198', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Xuân Thịnh', '02/03/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0198');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0268', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Doãn Hiệp', '19/08/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0268');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0514', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thị Thanh Huyền', '1977-12-22 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0514');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0515', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Thu Hiền', '15/02/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0515');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0235', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Hồng Hải 1978', '13/03/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0235');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0067', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Cao Thị Hồng Hạnh', '16/08/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0067');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0111', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lê Văn Thắng', '12/03/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0111');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0412', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Văn Khoa', '09/07/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0412');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0246', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hà Đức Hùng', '1986-11-02 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0246');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0536', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quang Anh', '1987-10-11 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0536');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0540', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đào Nam Chung', '1978-11-11 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0540');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0564', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Hoàng Trọng Quý', '1982-08-04 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0564');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0299', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thu Huế', '05/07/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0299');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0362', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Quốc Bình', '12/06/1972',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'CC'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0362');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0022', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Đỗ Hoàng Dương', '03/07/2000',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0022');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0526', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phan Đình Tường', '26/10/1982',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0526');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0524', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Viết Tiến', '24/09/1970',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0524');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0523', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lưu Chí Công', '1976-08-10 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0523');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0426', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Quang Sơn', '16/04/1983',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0426');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0328', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thế Hùng', '21/04/1967',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0328');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0422', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Thành Công', '29/03/1989',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0422');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0423', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Đức', '17/02/1980',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0423');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0421', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Đình Thương', '14/02/1975',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0421');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0559', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Nguyễn Văn Đông', '02/10/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0559');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0396', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Giáp Văn Việt', '15/08/1986',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0396');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0525', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Lâm', '15/05/1974',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0525');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0018', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Bùi Quang Tiến', '09/06/1977',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0018');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0504', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phan Văn Quang', '06/12/1990',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0504');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0609', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Tài', '27/8/2002',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0609');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0614', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Thị Gấm', '1984-11-05 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0614');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0424', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Đại Nghĩa', '27/08/1976',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0424');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0218', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Huy Toàn', '28/06/1981',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0218');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0419', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Ngô Đình Cường', '12/05/1984',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0419');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0418', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Lý Ngọc Đàm', '30/05/1978',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0418');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0329', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Phạm Văn Ngọc', '1981-12-16 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0329');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0427', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Vũ Văn Khá', '1988-01-05 00:00:00',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0427');
INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)
SELECT '20ZZ-0544', '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK', 'Trần Thanh Tùng', '20/05/1992',
    (SELECT id FROM dm_don_vi WHERE ma_don_vi = 'KSHQ'),
    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = 'HD'),
    FALSE, TRUE
WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '20ZZ-0544');
