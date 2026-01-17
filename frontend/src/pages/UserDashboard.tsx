import { useState, useEffect } from 'react'
import { useAuthStore } from '../store'
import { keKhaiApi } from '../api'

export default function UserDashboard() {
  const { user } = useAuthStore()
  const [stats, setStats] = useState<any>(null)
  const [loading, setLoading] = useState(true)
  
  const now = new Date()
  const thang = now.getMonth() + 1
  const nam = now.getFullYear()

  useEffect(() => {
    keKhaiApi.thongKeCuaToi(thang, nam).then(setStats).catch(console.error).finally(() => setLoading(false))
  }, [])

  if (loading) return <div className="flex justify-center items-center h-64"><div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div></div>

  return (
    <div>
      <h1 className="text-2xl font-bold text-gray-900 mb-2">Xin chào, {user?.ho_ten}!</h1>
      <p className="text-gray-600 mb-6">{user?.don_vi_ten} - {user?.chuc_vu_ten}</p>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
        <div className="bg-white rounded-xl shadow p-6">
          <div className="flex items-center">
            <div className="p-3 bg-blue-100 rounded-lg"><span className="text-2xl">📝</span></div>
            <div className="ml-4">
              <p className="text-sm text-gray-500">Tổng kê khai T{thang}</p>
              <p className="text-2xl font-bold">{stats?.tong_ke_khai || 0}</p>
            </div>
          </div>
        </div>

        <div className="bg-white rounded-xl shadow p-6">
          <div className="flex items-center">
            <div className="p-3 bg-yellow-100 rounded-lg"><span className="text-2xl">⏳</span></div>
            <div className="ml-4">
              <p className="text-sm text-gray-500">Chờ duyệt</p>
              <p className="text-2xl font-bold text-yellow-600">{stats?.cho_duyet || 0}</p>
            </div>
          </div>
        </div>

        <div className="bg-white rounded-xl shadow p-6">
          <div className="flex items-center">
            <div className="p-3 bg-green-100 rounded-lg"><span className="text-2xl">✅</span></div>
            <div className="ml-4">
              <p className="text-sm text-gray-500">Đã duyệt</p>
              <p className="text-2xl font-bold text-green-600">{stats?.da_duyet || 0}</p>
            </div>
          </div>
        </div>

        <div className="bg-white rounded-xl shadow p-6">
          <div className="flex items-center">
            <div className="p-3 bg-purple-100 rounded-lg"><span className="text-2xl">⭐</span></div>
            <div className="ml-4">
              <p className="text-sm text-gray-500">Tổng điểm T{thang}</p>
              <p className="text-2xl font-bold text-purple-600">{stats?.tong_diem_da_duyet?.toFixed(1) || 0}</p>
            </div>
          </div>
        </div>
      </div>

      <div className="bg-white rounded-xl shadow p-6">
        <h2 className="text-lg font-semibold mb-4">Hướng dẫn</h2>
        <div className="space-y-2 text-gray-600">
          <p>📝 <strong>Kê khai công việc:</strong> Nhập công việc đã thực hiện hàng ngày</p>
          <p>📊 <strong>Chọn sản phẩm và mức độ:</strong> Hệ thống tự động tính điểm quy đổi</p>
          <p>⏳ <strong>Chờ duyệt:</strong> Lãnh đạo sẽ phê duyệt kê khai của bạn</p>
          {user?.la_lanh_dao && <p>✅ <strong>Phê duyệt:</strong> Bạn có quyền duyệt kê khai của công chức trong đơn vị</p>}
        </div>
      </div>
    </div>
  )
}
