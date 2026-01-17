import { useState, useEffect } from 'react'
import { adminApi } from '../api'

export default function AdminHeSo() {
  const [items, setItems] = useState<any[]>([])
  const [sanPhams, setSanPhams] = useState<any[]>([])
  const [mucDos, setMucDos] = useState<any[]>([])
  const [loading, setLoading] = useState(true)
  const [filterSP, setFilterSP] = useState<number | ''>('')
  const [showModal, setShowModal] = useState(false)
  const [editingItem, setEditingItem] = useState<any>(null)
  const [formData, setFormData] = useState({ san_pham_id: '', muc_do_id: '', he_so: '' })
  const [formError, setFormError] = useState('')
  const [saving, setSaving] = useState(false)

  useEffect(() => {
    Promise.all([adminApi.getHeSo(), adminApi.getSanPham(), adminApi.getMucDo()])
      .then(([h, s, m]) => { setItems(h); setSanPhams(s); setMucDos(m) })
      .finally(() => setLoading(false))
  }, [])

  useEffect(() => { if (!loading) adminApi.getHeSo(filterSP || undefined).then(setItems) }, [filterSP])

  const openCreate = () => { setEditingItem(null); setFormData({ san_pham_id: '', muc_do_id: '', he_so: '' }); setFormError(''); setShowModal(true) }
  const openEdit = (i: any) => { setEditingItem(i); setFormData({ san_pham_id: i.san_pham_id.toString(), muc_do_id: i.muc_do_id.toString(), he_so: i.he_so.toString() }); setFormError(''); setShowModal(true) }

  const handleSave = async () => {
    setFormError(''); setSaving(true)
    try {
      const payload = { san_pham_id: parseInt(formData.san_pham_id), muc_do_id: parseInt(formData.muc_do_id), he_so: parseFloat(formData.he_so) }
      if (editingItem) await adminApi.updateHeSo(editingItem.id, { he_so: payload.he_so })
      else await adminApi.createHeSo(payload)
      setShowModal(false)
      adminApi.getHeSo(filterSP || undefined).then(setItems)
    } catch (err: any) { setFormError(err.message) }
    finally { setSaving(false) }
  }

  const handleDelete = async (i: any) => { if (confirm(`Xóa hệ số "${i.san_pham_ten} - ${i.muc_do_ten}"?`)) { await adminApi.deleteHeSo(i.id); adminApi.getHeSo(filterSP || undefined).then(setItems) } }

  if (loading) return <div className="flex justify-center items-center h-64"><div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div></div>

  // Group by san_pham
  const grouped: { [key: string]: any[] } = {}
  items.forEach((i) => { if (!grouped[i.san_pham_ten]) grouped[i.san_pham_ten] = []; grouped[i.san_pham_ten].push(i) })

  return (
    <div>
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-2xl font-bold">Hệ số quy đổi</h1>
        <button onClick={openCreate} className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">+ Thêm mới</button>
      </div>

      <div className="bg-white rounded-xl shadow p-4 mb-6">
        <select value={filterSP} onChange={(e) => setFilterSP(e.target.value ? parseInt(e.target.value) : '')} className="w-64 px-4 py-2 border rounded-lg">
          <option value="">Tất cả sản phẩm</option>
          {sanPhams.map((s) => <option key={s.id} value={s.id}>{s.ten_san_pham}</option>)}
        </select>
      </div>

      <div className="space-y-6">
        {Object.entries(grouped).map(([name, list]) => (
          <div key={name} className="bg-white rounded-xl shadow overflow-hidden">
            <div className="px-4 py-3 bg-gray-50 border-b font-semibold">{name}</div>
            <table className="w-full">
              <thead className="bg-gray-50">
                <tr>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Mức độ</th>
                  <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Hệ số</th>
                  <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Thao tác</th>
                </tr>
              </thead>
              <tbody className="divide-y">
                {list.map((i) => (
                  <tr key={i.id} className="hover:bg-gray-50">
                    <td className="px-4 py-3 text-sm">{i.muc_do_ten}</td>
                    <td className="px-4 py-3 text-sm text-center font-bold text-blue-600">{i.he_so}</td>
                    <td className="px-4 py-3 text-sm text-center">
                      <button onClick={() => openEdit(i)} className="text-blue-600 hover:text-blue-800 mx-1">✏️</button>
                      <button onClick={() => handleDelete(i)} className="text-red-600 hover:text-red-800 mx-1">🗑️</button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        ))}
        {Object.keys(grouped).length === 0 && <div className="bg-white rounded-xl shadow p-8 text-center text-gray-500">Chưa có hệ số quy đổi</div>}
      </div>

      {showModal && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-xl shadow-xl w-full max-w-md mx-4">
            <div className="px-6 py-4 border-b"><h2 className="text-lg font-semibold">{editingItem ? 'Sửa' : 'Thêm'} hệ số</h2></div>
            <div className="p-6 space-y-4">
              {formError && <div className="p-3 text-sm text-red-700 bg-red-100 rounded-lg">{formError}</div>}
              <div>
                <label className="block text-sm font-medium mb-1">Sản phẩm *</label>
                <select value={formData.san_pham_id} onChange={(e) => setFormData({ ...formData, san_pham_id: e.target.value })} disabled={!!editingItem} className="w-full px-3 py-2 border rounded-lg disabled:bg-gray-100">
                  <option value="">-- Chọn --</option>
                  {sanPhams.map((s) => <option key={s.id} value={s.id}>{s.ten_san_pham}</option>)}
                </select>
              </div>
              <div>
                <label className="block text-sm font-medium mb-1">Mức độ *</label>
                <select value={formData.muc_do_id} onChange={(e) => setFormData({ ...formData, muc_do_id: e.target.value })} disabled={!!editingItem} className="w-full px-3 py-2 border rounded-lg disabled:bg-gray-100">
                  <option value="">-- Chọn --</option>
                  {mucDos.map((m) => <option key={m.id} value={m.id}>{m.ten_muc_do}</option>)}
                </select>
              </div>
              <div>
                <label className="block text-sm font-medium mb-1">Hệ số *</label>
                <input type="number" step="0.01" value={formData.he_so} onChange={(e) => setFormData({ ...formData, he_so: e.target.value })} className="w-full px-3 py-2 border rounded-lg" />
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
