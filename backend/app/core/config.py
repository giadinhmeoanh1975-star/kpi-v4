from pydantic_settings import BaseSettings, SettingsConfigDict
from typing import List

class Settings(BaseSettings):
    """Application settings loaded from environment variables"""
    
    # Application
    APP_NAME: str = "KPI System - Chi cục Hải quan khu vực VIII"
    APP_VERSION: str = "4.0.0"
    SECRET_KEY: str = "your-super-secret-key-change-in-production"
    
    # Database
    # Pydantic sẽ tự động lấy biến DATABASE_URL từ Render
    DATABASE_URL: str = "postgresql+asyncpg://kpi_user:kpi_password@localhost:5432/kpi_db"
    DATABASE_ECHO: bool = False
    
    # JWT
    ALGORITHM: str = "HS256"
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 480 
    
    # CORS
    CORS_ORIGINS: List[str] = ["*"] # Để tạm * để debug cho dễ, sau này sửa lại domain

    # Cấu hình để Pydantic đọc file .env và bỏ qua các biến thừa
    model_config = SettingsConfigDict(
        env_file=".env",
        case_sensitive=True,
        extra="ignore"
    )

settings = Settings()