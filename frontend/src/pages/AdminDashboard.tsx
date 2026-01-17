import { useState, useEffect } from 'react'
import { adminApi } from '../api'

export default function AdminDashboard() {
  const [stats, setStats] = useState<any>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    adminApi.getDashboard().then(setStats).catch(console.error).finally(() => setLoading(false))
  }, [])

  if (loading) return <div className="flex justify-center items-center h-64"><div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div></div>

  return (
    <div>
      <h1 className="text-2xl font-bold text-gray-900 mb-6">Dashboard Admin</h1>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
        <div className="bg-white rounded-xl shadow p-6">
          <div className="flex items-center">
            <div className="p-3 bg-blue-100 rounded-lg"><span className="text-2xl">👥</span></div>
            <div className="ml-4">
              <p className="text-sm text-gray-500">Tổng người dùng</p>
              <p className="text-2xl font-bold">{stats?.tong_nguoi_dung || 0}</p>
            </div>
          </div>
        </div>

        <div className="bg-white rounded-xl shadow p-6">
          <div className="flex items-center">
            <div className="p-3 bg-green-100 rounded-lg"><span className="text-2xl">✅</span></div>
            <div className="ml-4">
              <p className="text-sm text-gray-500">Đang hoạt động</p>
              <p className="text-2xl font-bold">{stats?.nguoi_dung_hoat_dong || 0}</p>
            </div>
          </div>
        </div>

        <div className="bg-white rounded-xl shadow p-6">
          <div className="flex items-center">
            <div className="p-3 bg-yellow-100 rounded-lg"><span className="text-2xl">📦</span></div>
            <div className="ml-4">
              <p className="text-sm text-gray-500">Sản phẩm chuẩn</p>
              <p className="text-2xl font-bold">{stats?.tong_san_pham || 0}</p>
            </div>
          </div>
        </div>

        <div className="bg-white rounded-xl shadow p-6">
          <div className="flex items-center">
            <div className="p-3 bg-purple-100 rounded-lg"><span className="text-2xl">🔢</span></div>
            <div className="ml-4">
              <p className="text-sm text-gray-500">Hệ số quy đổi</p>
              <p className="text-2xl font-bold">{stats?.tong_he_so || 0}</p>
            </div>
          </div>
        </div>
      </div>

      <div className="mt-8 bg-white rounded-xl shadow p-6">
        <h2 className="text-lg font-semibold mb-4">Hướng dẫn sử dụng</h2>
        <div className="space-y-2 text-gray-600">
          <p>📌 <strong>Quản lý tài khoản:</strong> Thêm, sửa, xóa, reset mật khẩu người dùng</p>
          <p>📌 <strong>Sản phẩm chuẩn:</strong> Quản lý danh mục sản phẩm công việc</p>
          <p>📌 <strong>Hệ số quy đổi:</strong> Thiết lập hệ số cho từng sản phẩm theo mức độ</p>
        </div>
      </div>
    </div>
  )
}
