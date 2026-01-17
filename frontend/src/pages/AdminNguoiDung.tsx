import { useState, useEffect } from 'react'
import { adminApi } from '../api'

export default function AdminNguoiDung() {
  const [users, setUsers] = useState<any[]>([])
  const [donViList, setDonViList] = useState<any[]>([])
  const [chucVuList, setChucVuList] = useState<any[]>([])
  const [loading, setLoading] = useState(true)
  const [search, setSearch] = useState('')
  const [filterDonVi, setFilterDonVi] = useState<number | ''>('')
  const [showModal, setShowModal] = useState(false)
  const [editingUser, setEditingUser] = useState<any>(null)
  const [formData, setFormData] = useState({ ma_cong_chuc: '', ho_ten: '', nam_sinh: '', don_vi_id: '', chuc_vu_id: '', email: '', so_dien_thoai: '', la_admin: false, la_tccb: false })
  const [formError, setFormError] = useState('')
  const [saving, setSaving] = useState(false)

  useEffect(() => {
    Promise.all([adminApi.getNguoiDung({ limit: 500 }), adminApi.getDonVi(), adminApi.getChucVu()])
      .then(([u, d, c]) => { setUsers(u); setDonViList(d); setChucVuList(c) })
      .finally(() => setLoading(false))
  }, [])

  useEffect(() => {
    if (!loading) {
      adminApi.getNguoiDung({ don_vi_id: filterDonVi || undefined, search: search || undefined, limit: 500 }).then(setUsers)
    }
  }, [filterDonVi, search])

  const openCreate = () => { setEditingUser(null); setFormData({ ma_cong_chuc: '', ho_ten: '', nam_sinh: '', don_vi_id: '', chuc_vu_id: '', email: '', so_dien_thoai: '', la_admin: false, la_tccb: false }); setFormError(''); setShowModal(true) }
  const openEdit = (u: any) => { setEditingUser(u); setFormData({ ma_cong_chuc: u.ma_cong_chuc, ho_ten: u.ho_ten, nam_sinh: u.nam_sinh || '', don_vi_id: u.don_vi_id?.toString() || '', chuc_vu_id: u.chuc_vu_id?.toString() || '', email: u.email || '', so_dien_thoai: u.so_dien_thoai || '', la_admin: u.la_admin, la_tccb: u.la_tccb }); setFormError(''); setShowModal(true) }

  const handleSave = async () => {
    setFormError(''); setSaving(true)
    try {
      const payload = { ...formData, don_vi_id: formData.don_vi_id ? parseInt(formData.don_vi_id) : null, chuc_vu_id: formData.chuc_vu_id ? parseInt(formData.chuc_vu_id) : null }
      if (editingUser) await adminApi.updateNguoiDung(editingUser.id, payload)
      else await adminApi.createNguoiDung(payload)
      setShowModal(false)
      adminApi.getNguoiDung({ limit: 500 }).then(setUsers)
    } catch (err: any) { setFormError(err.message) }
    finally { setSaving(false) }
  }

  const handleReset = async (u: any) => { if (confirm(`Reset mật khẩu "${u.ho_ten}" về 123456?`)) { await adminApi.resetPassword(u.id); alert('Đã reset mật khẩu') } }
  const handleToggle = async (u: any) => { if (confirm(`${u.trang_thai ? 'Khóa' : 'Mở khóa'} "${u.ho_ten}"?`)) { await adminApi.updateNguoiDung(u.id, { trang_thai: !u.trang_thai }); adminApi.getNguoiDung({ limit: 500 }).then(setUsers) } }

  if (loading) return <div className="flex justify-center items-center h-64"><div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div></div>

  return (
    <div>
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-2xl font-bold">Quản lý tài khoản</h1>
        <button onClick={openCreate} className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">+ Thêm mới</button>
      </div>

      <div className="bg-white rounded-xl shadow p-4 mb-6 flex gap-4">
        <input type="text" placeholder="Tìm kiếm..." value={search} onChange={(e) => setSearch(e.target.value)} className="flex-1 px-4 py-2 border rounded-lg" />
        <select value={filterDonVi} onChange={(e) => setFilterDonVi(e.target.value ? parseInt(e.target.value) : '')} className="w-64 px-4 py-2 border rounded-lg">
          <option value="">Tất cả đơn vị</option>
          {donViList.map((d) => <option key={d.id} value={d.id}>{d.ten_don_vi}</option>)}
        </select>
      </div>

      <div className="bg-white rounded-xl shadow overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-50">
            <tr>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Mã CC</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Họ tên</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Đơn vị</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Chức vụ</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Quyền</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Trạng thái</th>
              <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Thao tác</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {users.map((u) => (
              <tr key={u.id} className="hover:bg-gray-50">
                <td className="px-4 py-3 text-sm font-medium">{u.ma_cong_chuc}</td>
                <td className="px-4 py-3 text-sm">{u.ho_ten}</td>
                <td className="px-4 py-3 text-sm text-gray-500">{u.don_vi_ten}</td>
                <td className="px-4 py-3 text-sm text-gray-500">{u.chuc_vu_ten}</td>
                <td className="px-4 py-3 text-sm">
                  {u.la_admin && <span className="px-2 py-1 bg-red-100 text-red-700 rounded text-xs mr-1">Admin</span>}
                  {u.la_tccb && <span className="px-2 py-1 bg-blue-100 text-blue-700 rounded text-xs">TCCB</span>}
                </td>
                <td className="px-4 py-3 text-sm">
                  <span className={`px-2 py-1 rounded text-xs ${u.trang_thai ? 'bg-green-100 text-green-700' : 'bg-gray-100 text-gray-700'}`}>
                    {u.trang_thai ? 'Hoạt động' : 'Đã khóa'}
                  </span>
                </td>
                <td className="px-4 py-3 text-sm text-center">
                  <button onClick={() => openEdit(u)} className="text-blue-600 hover:text-blue-800 mx-1">✏️</button>
                  <button onClick={() => handleReset(u)} className="text-yellow-600 hover:text-yellow-800 mx-1">🔑</button>
                  <button onClick={() => handleToggle(u)} className="text-gray-600 hover:text-gray-800 mx-1">{u.trang_thai ? '🔒' : '🔓'}</button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
        <div className="px-4 py-3 bg-gray-50 text-sm text-gray-500">Tổng: {users.length} tài khoản</div>
      </div>

      {showModal && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-xl shadow-xl w-full max-w-lg mx-4">
            <div className="px-6 py-4 border-b"><h2 className="text-lg font-semibold">{editingUser ? 'Sửa' : 'Thêm'} tài khoản</h2></div>
            <div className="p-6 space-y-4">
              {formError && <div className="p-3 text-sm text-red-700 bg-red-100 rounded-lg">{formError}</div>}
              <div>
                <label className="block text-sm font-medium mb-1">Mã công chức *</label>
                <input type="text" value={formData.ma_cong_chuc} onChange={(e) => setFormData({ ...formData, ma_cong_chuc: e.target.value })} disabled={!!editingUser} className="w-full px-3 py-2 border rounded-lg disabled:bg-gray-100" />
              </div>
              <div>
                <label className="block text-sm font-medium mb-1">Họ tên *</label>
                <input type="text" value={formData.ho_ten} onChange={(e) => setFormData({ ...formData, ho_ten: e.target.value })} className="w-full px-3 py-2 border rounded-lg" />
              </div>
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-medium mb-1">Đơn vị</label>
                  <select value={formData.don_vi_id} onChange={(e) => setFormData({ ...formData, don_vi_id: e.target.value })} className="w-full px-3 py-2 border rounded-lg">
                    <option value="">-- Chọn --</option>
                    {donViList.map((d) => <option key={d.id} value={d.id}>{d.ten_don_vi}</option>)}
                  </select>
                </div>
                <div>
                  <label className="block text-sm font-medium mb-1">Chức vụ</label>
                  <select value={formData.chuc_vu_id} onChange={(e) => setFormData({ ...formData, chuc_vu_id: e.target.value })} className="w-full px-3 py-2 border rounded-lg">
                    <option value="">-- Chọn --</option>
                    {chucVuList.map((c) => <option key={c.id} value={c.id}>{c.ten_chuc_vu}</option>)}
                  </select>
                </div>
              </div>
              <div className="flex gap-6">
                <label className="flex items-center"><input type="checkbox" checked={formData.la_admin} onChange={(e) => setFormData({ ...formData, la_admin: e.target.checked })} className="mr-2" /><span className="text-sm">Admin</span></label>
                <label className="flex items-center"><input type="checkbox" checked={formData.la_tccb} onChange={(e) => setFormData({ ...formData, la_tccb: e.target.checked })} className="mr-2" /><span className="text-sm">TCCB</span></label>
              </div>
              {!editingUser && <p className="text-sm text-gray-500">* Mật khẩu mặc định: <strong>123456</strong></p>}
            </div>
            <div className="px-6 py-4 border-t flex justify-end gap-3">
              <button onClick={() => setShowModal(false)} className="px-4 py-2 bg-gray-200 rounded-lg">Hủy</button>
              <button onClick={handleSave} disabled={saving} className="px-4 py-2 bg-blue-600 text-white rounded-lg disabled:opacity-50">{saving ? 'Đang lưu...' : 'Lưu'}</button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
