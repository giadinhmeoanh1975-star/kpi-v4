import { Link, useLocation, useNavigate, Outlet } from 'react-router-dom'
import { useAuthStore } from '../store'

export default function AdminLayout() {
  const location = useLocation()
  const navigate = useNavigate()
  const { user, logout } = useAuthStore()

  const handleLogout = () => {
    logout()
    navigate('/login')
  }

  const menuItems = [
    { path: '/admin', label: 'Dashboard', icon: '📊' },
    { path: '/admin/nguoi-dung', label: 'Quản lý tài khoản', icon: '👥' },
    { path: '/admin/san-pham', label: 'Sản phẩm chuẩn', icon: '📦' },
    { path: '/admin/he-so', label: 'Hệ số quy đổi', icon: '🔢' },
  ]

  const isActive = (path: string) => path === '/admin' ? location.pathname === '/admin' : location.pathname.startsWith(path)

  return (
    <div className="min-h-screen bg-gray-100">
      <aside className="fixed top-0 left-0 h-full w-64 bg-gray-900 text-white">
        <div className="p-4 border-b border-gray-700">
          <h1 className="font-bold text-lg">KPI Admin</h1>
          <p className="text-sm text-gray-400">{user?.ho_ten}</p>
        </div>

        <nav className="mt-4">
          {menuItems.map((item) => (
            <Link
              key={item.path}
              to={item.path}
              className={`flex items-center px-4 py-3 hover:bg-gray-800 ${isActive(item.path) ? 'bg-blue-600' : ''}`}
            >
              <span className="text-xl mr-3">{item.icon}</span>
              <span>{item.label}</span>
            </Link>
          ))}
        </nav>

        <div className="absolute bottom-0 left-0 right-0 p-4 border-t border-gray-700">
          <button onClick={handleLogout} className="w-full py-2 bg-red-600 hover:bg-red-700 rounded">
            Đăng xuất
          </button>
        </div>
      </aside>

      <main className="ml-64 p-6">
        <Outlet />
      </main>
    </div>
  )
}
