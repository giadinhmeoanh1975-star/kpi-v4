import { useState, useEffect } from 'react'
import { keKhaiApi } from '../api'

export default function KeKhaiPage() {
  const [keKhais, setKeKhais] = useState<any[]>([])
  const [sanPhams, setSanPhams] = useState<any[]>([])
  const [mucDos, setMucDos] = useState<any[]>([])
  const [heSoList, setHeSoList] = useState<any[]>([])
  const [loading, setLoading] = useState(true)
  
  const now = new Date()
  const [thang, setThang] = useState(now.getMonth() + 1)
  const [nam, setNam] = useState(now.getFullYear())
  const [filterTrangThai, setFilterTrangThai] = useState('')
  
  const [showModal, setShowModal] = useState(false)
  const [formData, setFormData] = useState({
    ngay_thuc_hien: new Date().toISOString().split('T')[0],
    san_pham_id: '',
    muc_do_id: '',
    so_luong: '1',
    he_so_tu_nhap: '',
    mo_ta: ''
  })
  const [formError, setFormError] = useState('')
  const [saving, setSaving] = useState(false)
  const [selectedHeSo, setSelectedHeSo] = useState<any>(null)

  useEffect(() => {
    Promise.all([keKhaiApi.getSanPham(), keKhaiApi.getMucDo()])
      .then(([sp, md]) => { setSanPhams(sp); setMucDos(md) })
      .finally(() => setLoading(false))
  }, [])

  useEffect(() => {
    if (!loading) loadKeKhai()
  }, [thang, nam, filterTrangThai])

  const loadKeKhai = () => {
    keKhaiApi.getKeKhaiCuaToi({ thang, nam, trang_thai: filterTrangThai || undefined }).then(setKeKhais)
  }

  // Load hệ số khi chọn sản phẩm
  useEffect(() => {
    if (formData.san_pham_id) {
      keKhaiApi.getHeSoBySanPham(parseInt(formData.san_pham_id)).then(setHeSoList)
    } else {
      setHeSoList([])
    }
    setFormData(prev => ({ ...prev, muc_do_id: '', he_so_tu_nhap: '' }))
    setSelectedHeSo(null)
  }, [formData.san_pham_id])

  // Update selected hệ số khi chọn mức độ
  useEffect(() => {
    if (formData.muc_do_id) {
      const found = heSoList.find(h => h.muc_do_id === parseInt(formData.muc_do_id))
      setSelectedHeSo(found)
    } else {
      setSelectedHeSo(null)
    }
  }, [formData.muc_do_id, heSoList])

  const openCreate = () => {
    setFormData({ ngay_thuc_hien: new Date().toISOString().split('T')[0], san_pham_id: '', muc_do_id: '', so_luong: '1', he_so_tu_nhap: '', mo_ta: '' })
    setFormError('')
    setShowModal(true)
  }

  const handleSave = async () => {
    setFormError(''); setSaving(true)
    try {
      const payload: any = {
        ngay_thuc_hien: formData.ngay_thuc_hien,
        san_pham_id: parseInt(formData.san_pham_id),
        muc_do_id: parseInt(formData.muc_do_id),
        so_luong: parseInt(formData.so_luong),
        mo_ta: formData.mo_ta || null
      }
      if (selectedHeSo?.cho_phep_tu_nhap && formData.he_so_tu_nhap) {
        payload.he_so_tu_nhap = parseFloat(formData.he_so_tu_nhap)
      }
      await keKhaiApi.createKeKhai(payload)
      setShowModal(false)
      loadKeKhai()
    } catch (err: any) { setFormError(err.message) }
    finally { setSaving(false) }
  }

  const handleDelete = async (kk: any) => {
    if (kk.trang_thai !== 'cho_duyet') { alert('Chỉ có thể xóa kê khai đang chờ duyệt'); return }
    if (confirm('Xóa kê khai này?')) {
      await keKhaiApi.deleteKeKhai(kk.id)
      loadKeKhai()
    }
  }

  const getTrangThaiLabel = (tt: string) => {
    switch(tt) {
      case 'cho_duyet': return <span className="px-2 py-1 bg-yellow-100 text-yellow-700 rounded text-xs">Chờ duyệt</span>
      case 'da_duyet': return <span className="px-2 py-1 bg-green-100 text-green-700 rounded text-xs">Đã duyệt</span>
      case 'tu_choi': return <span className="px-2 py-1 bg-red-100 text-red-700 rounded text-xs">Từ chối</span>
      default: return tt
    }
  }

  // Tính điểm preview
  const diemPreview = () => {
    if (!formData.so_luong) return 0
    const sl = parseInt(formData.so_luong) || 0
    if (selectedHeSo?.cho_phep_tu_nhap) {
      return sl * (parseFloat(formData.he_so_tu_nhap) || 0)
    }
    return sl * (selectedHeSo?.he_so || 0)
  }

  if (loading) return <div className="flex justify-center items-center h-64"><div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div></div>

  return (
    <div>
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-2xl font-bold">Kê khai công việc</h1>
        <button onClick={openCreate} className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">+ Thêm kê khai</button>
      </div>

      {/* Filters */}
      <div className="bg-white rounded-xl shadow p-4 mb-6 flex gap-4 items-center">
        <div>
          <label className="text-sm text-gray-600">Tháng</label>
          <select value={thang} onChange={(e) => setThang(parseInt(e.target.value))} className="ml-2 px-3 py-1 border rounded">
            {[1,2,3,4,5,6,7,8,9,10,11,12].map(m => <option key={m} value={m}>Tháng {m}</option>)}
          </select>
        </div>
        <div>
          <label className="text-sm text-gray-600">Năm</label>
          <select value={nam} onChange={(e) => setNam(parseInt(e.target.value))} className="ml-2 px-3 py-1 border rounded">
            {[2024,2025,2026].map(y => <option key={y} value={y}>{y}</option>)}
          </select>
        </div>
        <div>
          <label className="text-sm text-gray-600">Trạng thái</label>
          <select value={filterTrangThai} onChange={(e) => setFilterTrangThai(e.target.value)} className="ml-2 px-3 py-1 border rounded">
            <option value="">Tất cả</option>
            <option value="cho_duyet">Chờ duyệt</option>
            <option value="da_duyet">Đã duyệt</option>
            <option value="tu_choi">Từ chối</option>
          </select>
        </div>
      </div>

      {/* Table */}
      <div className="bg-white rounded-xl shadow overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-50">
            <tr>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Ngày</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Sản phẩm</th>
              <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Mức độ</th>
              <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">SL</th>
              <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Hệ số</th>
              <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Điểm</th>
              <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Trạng thái</th>
              <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Thao tác</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {keKhais.map((kk) => (
              <tr key={kk.id} className="hover:bg-gray-50">
                <td className="px-4 py-3 text-sm">{kk.ngay_thuc_hien}</td>
                <td className="px-4 py-3 text-sm">{kk.san_pham_ten}</td>
                <td className="px-4 py-3 text-sm">{kk.muc_do_ten}</td>
                <td className="px-4 py-3 text-sm text-center">{kk.so_luong}</td>
                <td className="px-4 py-3 text-sm text-center">{kk.he_so}</td>
                <td className="px-4 py-3 text-sm text-center font-bold text-blue-600">{kk.diem_quy_doi}</td>
                <td className="px-4 py-3 text-sm text-center">{getTrangThaiLabel(kk.trang_thai)}</td>
                <td className="px-4 py-3 text-sm text-center">
                  {kk.trang_thai === 'cho_duyet' && (
                    <button onClick={() => handleDelete(kk)} className="text-red-600 hover:text-red-800">🗑️</button>
                  )}
                  {kk.trang_thai === 'tu_choi' && kk.ly_do_tu_choi && (
                    <span title={kk.ly_do_tu_choi} className="cursor-help">💬</span>
                  )}
                </td>
              </tr>
            ))}
            {keKhais.length === 0 && (
              <tr><td colSpan={8} className="px-4 py-8 text-center text-gray-500">Chưa có kê khai nào</td></tr>
            )}
          </tbody>
        </table>
      </div>

      {/* Modal */}
      {showModal && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-xl shadow-xl w-full max-w-lg mx-4">
            <div className="px-6 py-4 border-b"><h2 className="text-lg font-semibold">Thêm kê khai công việc</h2></div>
            <div className="p-6 space-y-4">
              {formError && <div className="p-3 text-sm text-red-700 bg-red-100 rounded-lg">{formError}</div>}
              
              <div>
                <label className="block text-sm font-medium mb-1">Ngày thực hiện *</label>
                <input type="date" value={formData.ngay_thuc_hien} onChange={(e) => setFormData({ ...formData, ngay_thuc_hien: e.target.value })} className="w-full px-3 py-2 border rounded-lg" />
              </div>
              
              <div>
                <label className="block text-sm font-medium mb-1">Sản phẩm *</label>
                <select value={formData.san_pham_id} onChange={(e) => setFormData({ ...formData, san_pham_id: e.target.value })} className="w-full px-3 py-2 border rounded-lg">
                  <option value="">-- Chọn sản phẩm --</option>
                  {sanPhams.map((sp) => <option key={sp.id} value={sp.id}>{sp.ten_san_pham}</option>)}
                </select>
              </div>
              
              <div>
                <label className="block text-sm font-medium mb-1">Mức độ *</label>
                <select value={formData.muc_do_id} onChange={(e) => setFormData({ ...formData, muc_do_id: e.target.value })} className="w-full px-3 py-2 border rounded-lg" disabled={!formData.san_pham_id}>
                  <option value="">-- Chọn mức độ --</option>
                  {heSoList.map((hs) => <option key={hs.muc_do_id} value={hs.muc_do_id}>{hs.muc_do_ten} (Hệ số: {hs.he_so})</option>)}
                </select>
              </div>
              
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-medium mb-1">Số lượng *</label>
                  <input type="number" min="1" value={formData.so_luong} onChange={(e) => setFormData({ ...formData, so_luong: e.target.value })} className="w-full px-3 py-2 border rounded-lg" />
                </div>
                {selectedHeSo?.cho_phep_tu_nhap && (
                  <div>
                    <label className="block text-sm font-medium mb-1">Hệ số tự nhập *</label>
                    <input type="number" step="0.1" value={formData.he_so_tu_nhap} onChange={(e) => setFormData({ ...formData, he_so_tu_nhap: e.target.value })} className="w-full px-3 py-2 border rounded-lg" placeholder="Nhập hệ số" />
                  </div>
                )}
              </div>
              
              <div>
                <label className="block text-sm font-medium mb-1">Mô tả</label>
                <textarea value={formData.mo_ta} onChange={(e) => setFormData({ ...formData, mo_ta: e.target.value })} className="w-full px-3 py-2 border rounded-lg" rows={2} placeholder="Mô tả công việc (tùy chọn)" />
              </div>
              
              {formData.san_pham_id && formData.muc_do_id && (
                <div className="p-3 bg-blue-50 rounded-lg">
                  <span className="text-sm text-gray-600">Điểm quy đổi: </span>
                  <span className="text-lg font-bold text-blue-600">{diemPreview().toFixed(1)}</span>
                </div>
              )}
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
