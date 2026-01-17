import { create } from 'zustand'
import { persist } from 'zustand/middleware'

interface User {
  id: number
  ma_cong_chuc: string
  ho_ten: string
  don_vi_id: number | null
  don_vi_ten: string
  chuc_vu_id: number | null
  chuc_vu_ten: string
  la_lanh_dao: boolean
  cap_lanh_dao: number
  la_admin: boolean
  la_tccb: boolean
}

interface AuthState {
  token: string | null
  user: User | null
  setAuth: (token: string, user: User) => void
  logout: () => void
}

export const useAuthStore = create<AuthState>()(
  persist(
    (set) => ({
      token: null,
      user: null,
      setAuth: (token, user) => {
        localStorage.setItem('token', token)
        set({ token, user })
      },
      logout: () => {
        localStorage.removeItem('token')
        set({ token: null, user: null })
      },
    }),
    { name: 'auth-storage' }
  )
)
