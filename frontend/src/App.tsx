import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom'
import { useAuthStore } from './store'
import LoginPage from './pages/LoginPage'
import AdminLayout from './pages/AdminLayout'
import AdminDashboard from './pages/AdminDashboard'
import AdminNguoiDung from './pages/AdminNguoiDung'
import AdminSanPham from './pages/AdminSanPham'
import AdminHeSo from './pages/AdminHeSo'
import UserLayout from './pages/UserLayout'
import UserDashboard from './pages/UserDashboard'
import KeKhaiPage from './pages/KeKhaiPage'
import PheDuyetPage from './pages/PheDuyetPage'

// Route cho Admin
function AdminRoute({ children }: { children: React.ReactNode }) {
  const { token, user } = useAuthStore()
  if (!token) return <Navigate to="/login" />
  if (!user?.la_admin) return <Navigate to="/user" />
  return <>{children}</>
}

// Route cho User (Công chức)
function UserRoute({ children }: { children: React.ReactNode }) {
  const { token, user } = useAuthStore()
  if (!token) return <Navigate to="/login" />
  // Admin thuần túy (không có đơn vị) không được vào trang user
  if (user?.la_admin && !user?.don_vi_id) return <Navigate to="/admin" />
  return <>{children}</>
}

// Route cho Lãnh đạo
function LeaderRoute({ children }: { children: React.ReactNode }) {
  const { token, user } = useAuthStore()
  if (!token) return <Navigate to="/login" />
  if (!user?.la_lanh_dao) return <Navigate to="/user" />
  return <>{children}</>
}

export default function App() {
  const { token, user } = useAuthStore()
  
  // Default redirect
  const getDefaultRoute = () => {
    if (!token) return '/login'
    if (user?.la_admin && !user?.don_vi_id) return '/admin'
    return '/user'
  }
  
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/login" element={<LoginPage />} />
        
        {/* Admin routes */}
        <Route path="/admin" element={<AdminRoute><AdminLayout /></AdminRoute>}>
          <Route index element={<AdminDashboard />} />
          <Route path="nguoi-dung" element={<AdminNguoiDung />} />
          <Route path="san-pham" element={<AdminSanPham />} />
          <Route path="he-so" element={<AdminHeSo />} />
        </Route>
        
        {/* User routes (Công chức) */}
        <Route path="/user" element={<UserRoute><UserLayout /></UserRoute>}>
          <Route index element={<UserDashboard />} />
          <Route path="ke-khai" element={<KeKhaiPage />} />
          <Route path="phe-duyet" element={<LeaderRoute><PheDuyetPage /></LeaderRoute>} />
        </Route>
        
        {/* Default redirect */}
        <Route path="/" element={<Navigate to={getDefaultRoute()} />} />
        <Route path="*" element={<Navigate to={getDefaultRoute()} />} />
      </Routes>
    </BrowserRouter>
  )
}
