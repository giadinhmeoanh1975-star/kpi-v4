import { useState, useEffect } from 'react'
import { useAuthStore } from '../store'
import { keKhaiApi } from '../api'

export default function PheDuyetPage() {
  const { user } = useAuthStore()
  const [choDuyet, setChoDuyet] = useState<any[]>([])
  const [daDuyet, setDaDuyet] = useState<any[]>([])
  const [loading, setLoading] = useState(true)
  const [tab, setTab] = useState<'cho_duyet' | 'da_xu_ly'>('cho_duyet')
  const [selected, setSelected] = useState<number[]>([])
  
  const now = new Date()
  const [thang, setThang] = useState(now.getMonth() + 1)
  const [nam, setNam] = useState(now.getFullYear())
  
  const [showRejectModal, setShowRejectModal] = useState(false)
  const [rejectReason, setRejectReason] = useState('')

  useEffect(() => {
    loadData()
  }, [thang, nam])

  const loadData = async () => {
    setLoading(true)
    try {
      const [cd, dd] = await Promise.all([
        keKhaiApi.getChoDuyet({ thang, nam }),
        keKhaiApi.getDaDuyet({ thang, nam })
      ])
      setChoDuyet(cd)
      setDaDuyet(dd)
    } catch (err) {
      console.error(err)
    } finally {
      setLoading(false)
    }
  }

  const toggleSelect = (id: number) => {
    setSelected(prev => prev.includes(id) ? prev.filter(x => x !== id) : [...prev, id])
  }

  const selectAll = () => {
    if (selected.length === choDuyet.length) {
      setSelected([])
    } else {
      setSelected(choDuyet.map(k => k.id))
    }
  }

  const handleDuyet = async () => {
    if (selected.length === 0) { alert('Chọn ít nhất 1 kê khai'); return }
    if (confirm(`Duyệt ${selected.length} kê khai?`)) {
      await keKhaiApi.pheDuyet({ ke_khai_ids: selected, hanh_dong: 'duyet' })
      setSelected([])
      loadData()
    }
  }

  const handleTuChoi = async () => {
    if (selected.length === 0) { alert('Chọn ít nhất 1 kê khai'); return }
    setShowRejectModal(true)
  }

  const confirmTuChoi = async () => {
    if (!rejectReason.trim()) { alert('Nhập lý do từ chối'); return }
    await keKhaiApi.pheDuyet({ ke_khai_ids: selected, hanh_dong: 'tu_choi', ly_do: rejectReason })
    setShowRejectModal(false)
    setRejectReason('')
    setSelected([])
    loadData()
  }

  const getTrangThaiLabel = (tt: string) => {
    switch(tt) {
      case 'da_duyet': return <span className="px-2 py-1 bg-green-100 text-green-700 rounded text-xs">Đã duyệt</span>
      case 'tu_choi': return <span className="px-2 py-1 bg-red-100 text-red-700 rounded text-xs">Từ chối</span>
      default: return tt
    }
  }

  // Mô tả quyền duyệt
  const getDuyetDescription = () => {
    switch(user?.cap_lanh_dao) {
      case 1: return 'Bạn có thể duyệt kê khai của Công chức trong đơn vị'
      case 2: return 'Bạn có thể duyệt kê khai của Phó và Công chức trong đơn vị'
      case 3: return 'Bạn có thể duyệt kê khai của Trưởng phòng/Đội trưởng trở xuống'
      case 4: return 'Bạn có thể duyệt tất cả kê khai trong Chi cục'
      default: return ''
    }
  }

  if (loading) return <div className="flex justify-center items-center h-64"><div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div></div>

  return (
    <div>
      <h1 className="text-2xl font-bold mb-2">Phê duyệt kê khai</h1>
      <p className="text-sm text-gray-500 mb-6">{getDuyetDescription()}</p>

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
      </div>

      {/* Tabs */}
      <div className="flex gap-2 mb-4">
        <button onClick={() => setTab('cho_duyet')} className={`px-4 py-2 rounded-lg ${tab === 'cho_duyet' ? 'bg-blue-600 text-white' : 'bg-gray-200'}`}>
          Chờ duyệt ({choDuyet.length})
        </button>
        <button onClick={() => setTab('da_xu_ly')} className={`px-4 py-2 rounded-lg ${tab === 'da_xu_ly' ? 'bg-blue-600 text-white' : 'bg-gray-200'}`}>
          Đã xử lý ({daDuyet.length})
        </button>
      </div>

      {tab === 'cho_duyet' && (
        <>
          {/* Actions */}
          {choDuyet.length > 0 && (
            <div className="bg-white rounded-xl shadow p-4 mb-4 flex gap-3 items-center">
              <button onClick={selectAll} className="px-3 py-1 bg-gray-200 rounded text-sm">
                {selected.length === choDuyet.length ? 'Bỏ chọn tất cả' : 'Chọn tất cả'}
              </button>
              <span className="text-sm text-gray-500">Đã chọn: {selected.length}</span>
              <div className="flex-1"></div>
              <button onClick={handleDuyet} disabled={selected.length === 0} className="px-4 py-2 bg-green-600 text-white rounded-lg disabled:opacity-50">
                ✓ Duyệt ({selected.length})
              </button>
              <button onClick={handleTuChoi} disabled={selected.length === 0} className="px-4 py-2 bg-red-600 text-white rounded-lg disabled:opacity-50">
                ✗ Từ chối ({selected.length})
              </button>
            </div>
          )}

          {/* Table */}
          <div className="bg-white rounded-xl shadow overflow-hidden">
            <table className="w-full">
              <thead className="bg-gray-50">
                <tr>
                  <th className="px-4 py-3 text-center w-10">
                    <input type="checkbox" checked={selected.length === choDuyet.length && choDuyet.length > 0} onChange={selectAll} />
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Công chức</th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Đơn vị</th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Ngày</th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Sản phẩm</th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Mức độ</th>
                  <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">SL</th>
                  <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Điểm</th>
                </tr>
              </thead>
              <tbody className="divide-y">
                {choDuyet.map((kk) => (
                  <tr key={kk.id} className={`hover:bg-gray-50 ${selected.includes(kk.id) ? 'bg-blue-50' : ''}`}>
                    <td className="px-4 py-3 text-center">
                      <input type="checkbox" checked={selected.includes(kk.id)} onChange={() => toggleSelect(kk.id)} />
                    </td>
                    <td className="px-4 py-3 text-sm font-medium">{kk.nguoi_dung_ten}</td>
                    <td className="px-4 py-3 text-sm text-gray-500">{kk.don_vi_ten}</td>
                    <td className="px-4 py-3 text-sm">{kk.ngay_thuc_hien}</td>
                    <td className="px-4 py-3 text-sm">{kk.san_pham_ten}</td>
                    <td className="px-4 py-3 text-sm">{kk.muc_do_ten}</td>
                    <td className="px-4 py-3 text-sm text-center">{kk.so_luong}</td>
                    <td className="px-4 py-3 text-sm text-center font-bold text-blue-600">{kk.diem_quy_doi}</td>
                  </tr>
                ))}
                {choDuyet.length === 0 && (
                  <tr><td colSpan={8} className="px-4 py-8 text-center text-gray-500">Không có kê khai chờ duyệt</td></tr>
                )}
              </tbody>
            </table>
          </div>
        </>
      )}

      {tab === 'da_xu_ly' && (
        <div className="bg-white rounded-xl shadow overflow-hidden">
          <table className="w-full">
            <thead className="bg-gray-50">
              <tr>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Công chức</th>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Đơn vị</th>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Ngày</th>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Sản phẩm</th>
                <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Điểm</th>
                <th className="px-4 py-3 text-center text-xs font-medium text-gray-500 uppercase">Trạng thái</th>
                <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Người duyệt</th>
              </tr>
            </thead>
            <tbody className="divide-y">
              {daDuyet.map((kk) => (
                <tr key={kk.id} className="hover:bg-gray-50">
                  <td className="px-4 py-3 text-sm font-medium">{kk.nguoi_dung_ten}</td>
                  <td className="px-4 py-3 text-sm text-gray-500">{kk.don_vi_ten}</td>
                  <td className="px-4 py-3 text-sm">{kk.ngay_thuc_hien}</td>
                  <td className="px-4 py-3 text-sm">{kk.san_pham_ten}</td>
                  <td className="px-4 py-3 text-sm text-center font-bold">{kk.diem_quy_doi}</td>
                  <td className="px-4 py-3 text-sm text-center">{getTrangThaiLabel(kk.trang_thai)}</td>
                  <td className="px-4 py-3 text-sm">{kk.nguoi_duyet_ten}</td>
                </tr>
              ))}
              {daDuyet.length === 0 && (
                <tr><td colSpan={7} className="px-4 py-8 text-center text-gray-500">Chưa có kê khai đã xử lý</td></tr>
              )}
            </tbody>
          </table>
        </div>
      )}

      {/* Reject Modal */}
      {showRejectModal && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-xl shadow-xl w-full max-w-md mx-4 p-6">
            <h3 className="text-lg font-semibold mb-4">Từ chối kê khai</h3>
            <textarea value={rejectReason} onChange={(e) => setRejectReason(e.target.value)} className="w-full px-3 py-2 border rounded-lg mb-4" rows={3} placeholder="Nhập lý do từ chối..." />
            <div className="flex justify-end gap-3">
              <button onClick={() => setShowRejectModal(false)} className="px-4 py-2 bg-gray-200 rounded-lg">Hủy</button>
              <button onClick={confirmTuChoi} className="px-4 py-2 bg-red-600 text-white rounded-lg">Xác nhận từ chối</button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
