import { useState, useEffect } from 'react'
import { adminApi } from '../api'

export default function AdminSanPham() {
  const [items, setItems] = useState<any[]>([])
  const [loading, setLoading] = useState(true)
  const [showModal, setShowModal] = useState(false)
  const [editingItem, setEditingItem] = useState<any>(null)
  const [formData, setFormData] = useState({ ma_san_pham: '', ten_san_pham: '', don_vi_tinh: '', thoi_gian_thuc_hien: '60', thu_tu: '0' })
  const [formError, setFormError] = useState('')
  const [saving, setSaving] = useState(false)

  useEffect(() => { adminApi.getSanPham().then(setItems).finally(() => setLoading(false)) }, [])

  const openCreate = () => { setEditingItem(null); setFormData({ ma_san_pham: '', ten_san_pham: '', don_vi_tinh: '', thoi_gian_thuc_hien: '60', thu_tu: '0' }); setFormError(''); setShowModal(true) }
  const openEdit = (i: any) => { setEditingItem(i); setFormData({ ma_san_pham: i.ma_san_pham, ten_san_pham: i.ten_san_pham, don_vi_tinh: i.don_vi_tinh || '', thoi_gian_thuc_hien: i.thoi_gian_thuc_hien.toString(), thu_tu: i.thu_tu.toString() }); setFormError(''); setShowModal(true) }

  const handleSave = async () => {
    setFormError(''); setSaving(true)
    try {
      const payload = { ...formData, thoi_gian_thuc_hien: parseInt(formData.thoi_gian_thuc_hien), thu_tu: parseInt(formData.thu_tu) }
      if (editingItem) await adminApi.updateSanPham(editingItem.id, payload)
      else await adminApi.createSanPham(payload)
      setShowModal(false)
      adminApi.getSanPham().then(setItems)
    } catch (err: any) { setFormError(err.message) }
    finally { setSaving(false) }
  }

  const handleDelete = async (i: any) => { if (confirm(`Xóa "${i.ten_san_pham}"?`)) { await adminApi.deleteSanPham(i.id); adminApi.getSanPham().then(setItems) } }

  if (loading) return <div className="flex justify-center items-center h-64"><div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div></div>

  return (
    <div>
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-2xl font-bold">Sản phẩm chuẩn</h1>
        <button onClick={openCreate} className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">+ Thêm mới</button>
      </div>

      <div className="bg-white rounded-xl shadow overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-50">
            <tr>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Mã SP</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Tên sản phẩm</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Đơn vị tính</th>
              <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Thời gian (phút)</th>
              <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Trạng thái</th>
              <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Thao tác</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {items.map((i) => (
              <tr key={i.id} className="hover:bg-gray-50">
                <td className="px-4 py-3 text-sm font-medium">{i.ma_san_pham}</td>
                <td className="px-4 py-3 text-sm">{i.ten_san_pham}</td>
                <td className="px-4 py-3 text-sm text-gray-500">{i.don_vi_tinh}</td>
                <td className="px-4 py-3 text-sm text-center">{i.thoi_gian_thuc_hien}</td>
                <td className="px-4 py-3 text-sm text-center">
                  <span className={`px-2 py-1 rounded text-xs ${i.trang_thai ? 'bg-green-100 text-green-700' : 'bg-gray-100 text-gray-700'}`}>
                    {i.trang_thai ? 'Hoạt động' : 'Đã ẩn'}
                  </span>
                </td>
                <td className="px-4 py-3 text-sm text-center">
                  <button onClick={() => openEdit(i)} className="text-blue-600 hover:text-blue-800 mx-1">✏️</button>
                  <button onClick={() => handleDelete(i)} className="text-red-600 hover:text-red-800 mx-1">🗑️</button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {showModal && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-xl shadow-xl w-full max-w-md mx-4">
            <div className="px-6 py-4 border-b"><h2 className="text-lg font-semibold">{editingItem ? 'Sửa' : 'Thêm'} sản phẩm</h2></div>
            <div className="p-6 space-y-4">
              {formError && <div className="p-3 text-sm text-red-700 bg-red-100 rounded-lg">{formError}</div>}
              <div>
                <label className="block text-sm font-medium mb-1">Mã sản phẩm *</label>
                <input type="text" value={formData.ma_san_pham} onChange={(e) => setFormData({ ...formData, ma_san_pham: e.target.value })} disabled={!!editingItem} className="w-full px-3 py-2 border rounded-lg disabled:bg-gray-100" />
              </div>
              <div>
                <label className="block text-sm font-medium mb-1">Tên sản phẩm *</label>
                <input type="text" value={formData.ten_san_pham} onChange={(e) => setFormData({ ...formData, ten_san_pham: e.target.value })} className="w-full px-3 py-2 border rounded-lg" />
              </div>
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-medium mb-1">Đơn vị tính</label>
                  <input type="text" value={formData.don_vi_tinh} onChange={(e) => setFormData({ ...formData, don_vi_tinh: e.target.value })} className="w-full px-3 py-2 border rounded-lg" />
                </div>
                <div>
                  <label className="block text-sm font-medium mb-1">Thời gian (phút)</label>
                  <input type="number" value={formData.thoi_gian_thuc_hien} onChange={(e) => setFormData({ ...formData, thoi_gian_thuc_hien: e.target.value })} className="w-full px-3 py-2 border rounded-lg" />
                </div>
              </div>
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
