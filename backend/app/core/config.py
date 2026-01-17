from pydantic_settings import BaseSettings, SettingsConfigDict
from typing import List

class Settings(BaseSettings):
    """Application settings loaded from environment variables"""
    
    # --- SỬA LẠI TÊN BIẾN CHO KHỚP VỚI MAIN.PY ---
    PROJECT_NAME: str = "KPI Management System"
    VERSION: str = "4.0.0"
    # ---------------------------------------------

    SECRET_KEY: str = "your-super-secret-key-change-in-production"
    
    # Database
    DATABASE_URL: str = "postgresql+asyncpg://kpi_user:kpi_password@localhost:5432/kpi_db"
    DATABASE_ECHO: bool = False
    
    # JWT
    ALGORITHM: str = "HS256"
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 480 
    
    # CORS
    CORS_ORIGINS: List[str] = ["*"] 

    # Cấu hình Pydantic
    model_config = SettingsConfigDict(
        env_file=".env",
        case_sensitive=True,
        extra="ignore"
    )

settings = Settings()