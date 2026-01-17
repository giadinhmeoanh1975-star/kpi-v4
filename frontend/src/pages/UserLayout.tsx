import { Link, useLocation, useNavigate, Outlet } from 'react-router-dom'
import { useAuthStore } from '../store'

export default function UserLayout() {
  const location = useLocation()
  const navigate = useNavigate()
  const { user, logout } = useAuthStore()

  const handleLogout = () => {
    logout()
    navigate('/login')
  }

  // Menu cho công chức
  const menuItems = [
    { path: '/user', label: 'Tổng quan', icon: '📊' },
    { path: '/user/ke-khai', label: 'Kê khai công việc', icon: '📝' },
  ]
  
  // Thêm menu phê duyệt nếu là lãnh đạo (cấp >= 1)
  if (user?.la_lanh_dao && user?.cap_lanh_dao >= 1) {
    menuItems.push({ path: '/user/phe-duyet', label: 'Phê duyệt', icon: '✅' })
  }
  
  // Thêm link Admin nếu có quyền admin
  if (user?.la_admin) {
    menuItems.push({ path: '/admin', label: 'Quản trị', icon: '⚙️' })
  }

  const isActive = (path: string) => path === '/user' ? location.pathname === '/user' : location.pathname.startsWith(path)

  // Hiển thị cấp lãnh đạo
  const getCapLabel = () => {
    if (!user?.la_lanh_dao) return ''
    switch(user.cap_lanh_dao) {
      case 1: return '(Cấp phó)'
      case 2: return '(Cấp trưởng)'
      case 3: return '(Phó CCT)'
      case 4: return '(CCT)'
      default: return ''
    }
  }

  return (
    <div className="min-h-screen bg-gray-100">
      <aside className="fixed top-0 left-0 h-full w-64 bg-blue-900 text-white">
        <div className="p-4 border-b border-blue-700">
          <h1 className="font-bold text-lg">KPI System</h1>
          <p className="text-sm text-blue-300">{user?.ho_ten}</p>
          <p className="text-xs text-blue-400">{user?.don_vi_ten}</p>
        </div>

        <nav className="mt-4">
          {menuItems.map((item) => (
            <Link
              key={item.path}
              to={item.path}
              className={`flex items-center px-4 py-3 hover:bg-blue-800 ${isActive(item.path) ? 'bg-blue-700' : ''}`}
            >
              <span className="text-xl mr-3">{item.icon}</span>
              <span>{item.label}</span>
            </Link>
          ))}
        </nav>

        <div className="absolute bottom-0 left-0 right-0 p-4 border-t border-blue-700">
          <div className="text-xs text-blue-300 mb-2">
            {user?.chuc_vu_ten} {getCapLabel()}
            {user?.la_lanh_dao && <span className="ml-1 text-yellow-400">★</span>}
          </div>
          <button onClick={handleLogout} className="w-full py-2 bg-red-600 hover:bg-red-700 rounded text-sm">
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
