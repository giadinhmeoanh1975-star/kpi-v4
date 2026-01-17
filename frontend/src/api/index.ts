const API = '/api'

async function request<T>(endpoint: string, options: RequestInit = {}): Promise<T> {
  const token = localStorage.getItem('token')
  const headers: HeadersInit = {
    'Content-Type': 'application/json',
    ...(token && { Authorization: `Bearer ${token}` }),
  }
  
  const response = await fetch(`${API}${endpoint}`, { ...options, headers })
  
  if (!response.ok) {
    const error = await response.json().catch(() => ({ detail: 'Lỗi không xác định' }))
    throw new Error(error.detail || 'Lỗi không xác định')
  }
  
  return response.json()
}

export const authApi = {
  login: (ma_cong_chuc: string, mat_khau: string) =>
    request<{ access_token: string; user: any }>('/auth/login', {
      method: 'POST',
      body: JSON.stringify({ ma_cong_chuc, mat_khau }),
    }),
  me: () => request<any>('/auth/me'),
  changePassword: (mat_khau_cu: string, mat_khau_moi: string) =>
    request<{ message: string }>('/auth/change-password', {
      method: 'POST',
      body: JSON.stringify({ mat_khau_cu, mat_khau_moi }),
    }),
}

export const adminApi = {
  getDashboard: () => request<any>('/admin/dashboard'),
  
  getNguoiDung: (params?: { don_vi_id?: number; search?: string; limit?: number }) => {
    const sp = new URLSearchParams()
    if (params?.don_vi_id) sp.set('don_vi_id', params.don_vi_id.toString())
    if (params?.search) sp.set('search', params.search)
    if (params?.limit) sp.set('limit', params.limit.toString())
    return request<any[]>(`/admin/nguoi-dung?${sp}`)
  },
  createNguoiDung: (data: any) => request<any>('/admin/nguoi-dung', { method: 'POST', body: JSON.stringify(data) }),
  updateNguoiDung: (id: number, data: any) => request<any>(`/admin/nguoi-dung/${id}`, { method: 'PUT', body: JSON.stringify(data) }),
  deleteNguoiDung: (id: number) => request<any>(`/admin/nguoi-dung/${id}`, { method: 'DELETE' }),
  resetPassword: (id: number) => request<any>(`/admin/nguoi-dung/${id}/reset-password`, { method: 'POST' }),
  
  getSanPham: () => request<any[]>('/admin/san-pham'),
  createSanPham: (data: any) => request<any>('/admin/san-pham', { method: 'POST', body: JSON.stringify(data) }),
  updateSanPham: (id: number, data: any) => request<any>(`/admin/san-pham/${id}`, { method: 'PUT', body: JSON.stringify(data) }),
  deleteSanPham: (id: number) => request<any>(`/admin/san-pham/${id}`, { method: 'DELETE' }),
  
  getHeSo: (san_pham_id?: number) => request<any[]>(`/admin/he-so${san_pham_id ? `?san_pham_id=${san_pham_id}` : ''}`),
  createHeSo: (data: any) => request<any>('/admin/he-so', { method: 'POST', body: JSON.stringify(data) }),
  updateHeSo: (id: number, data: any) => request<any>(`/admin/he-so/${id}`, { method: 'PUT', body: JSON.stringify(data) }),
  deleteHeSo: (id: number) => request<any>(`/admin/he-so/${id}`, { method: 'DELETE' }),
  
  getDonVi: () => request<any[]>('/admin/danh-muc/don-vi'),
  getChucVu: () => request<any[]>('/admin/danh-muc/chuc-vu'),
  getMucDo: () => request<any[]>('/admin/danh-muc/muc-do'),
}

export const keKhaiApi = {
  // Danh mục cho kê khai
  getSanPham: () => request<any[]>('/ke-khai/danh-muc/san-pham'),
  getMucDo: () => request<any[]>('/ke-khai/danh-muc/muc-do'),
  getHeSoBySanPham: (san_pham_id: number) => request<any[]>(`/ke-khai/danh-muc/he-so/${san_pham_id}`),
  
  // Kê khai của tôi
  getKeKhaiCuaToi: (params?: { thang?: number; nam?: number; trang_thai?: string }) => {
    const sp = new URLSearchParams()
    if (params?.thang) sp.set('thang', params.thang.toString())
    if (params?.nam) sp.set('nam', params.nam.toString())
    if (params?.trang_thai) sp.set('trang_thai', params.trang_thai)
    return request<any[]>(`/ke-khai/cua-toi?${sp}`)
  },
  
  createKeKhai: (data: any) => request<any>('/ke-khai', { method: 'POST', body: JSON.stringify(data) }),
  updateKeKhai: (id: number, data: any) => request<any>(`/ke-khai/${id}`, { method: 'PUT', body: JSON.stringify(data) }),
  deleteKeKhai: (id: number) => request<any>(`/ke-khai/${id}`, { method: 'DELETE' }),
  
  // Thống kê
  thongKeCuaToi: (thang: number, nam: number) => request<any>(`/ke-khai/thong-ke/cua-toi?thang=${thang}&nam=${nam}`),
  
  // Phê duyệt (cho lãnh đạo)
  getChoDuyet: (params?: { thang?: number; nam?: number }) => {
    const sp = new URLSearchParams()
    if (params?.thang) sp.set('thang', params.thang.toString())
    if (params?.nam) sp.set('nam', params.nam.toString())
    return request<any[]>(`/ke-khai/cho-duyet?${sp}`)
  },
  getDaDuyet: (params?: { thang?: number; nam?: number }) => {
    const sp = new URLSearchParams()
    if (params?.thang) sp.set('thang', params.thang.toString())
    if (params?.nam) sp.set('nam', params.nam.toString())
    return request<any[]>(`/ke-khai/da-duyet?${sp}`)
  },
  pheDuyet: (data: { ke_khai_ids: number[]; hanh_dong: string; ly_do?: string }) =>
    request<any>('/ke-khai/phe-duyet', { method: 'POST', body: JSON.stringify(data) }),
}
