#!/usr/bin/env python3
import csv

# bcrypt hash for "123456" - verified working
password_hash = '$2b$12$w/I0VvVVOB0k9dUeUB068OKcHyJdBElft4G1QJrmD6L/UVkX.tovK'

print("-- Insert CBCC data (Password: 123456)")

with open('/home/claude/kpi-v4/database/cong_chuc.csv', 'r', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    for row in reader:
        ma_cc = row['MÃ CC'].strip()
        ho_ten = row['HỌ VÀ TÊN'].strip().replace("'", "''")
        nam_sinh = row['NĂM SINH'].strip().replace("'", "''") if row['NĂM SINH'] else ''
        ma_chuc_vu = row['ma_chuc_vu'].strip()
        ma_don_vi = row['ma_don_vi'].strip()
        la_tccb = 'TRUE' if ma_don_vi == 'TCCB' else 'FALSE'
        
        print(f"INSERT INTO nguoi_dung (ma_cong_chuc, mat_khau, ho_ten, nam_sinh, don_vi_id, chuc_vu_id, la_tccb, trang_thai)")
        print(f"SELECT '{ma_cc}', '{password_hash}', '{ho_ten}', '{nam_sinh}',")
        print(f"    (SELECT id FROM dm_don_vi WHERE ma_don_vi = '{ma_don_vi}'),")
        print(f"    (SELECT id FROM dm_chuc_vu WHERE ma_chuc_vu = '{ma_chuc_vu}'),")
        print(f"    {la_tccb}, TRUE")
        print(f"WHERE NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_cong_chuc = '{ma_cc}');")
