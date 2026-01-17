import os
from pydantic_settings import BaseSettings # Cần cài: pip install pydantic-settings

class Settings(BaseSettings):
    PROJECT_NAME: str = "KPI Management System"
    VERSION: str = "4.0.0"
    
    # Pydantic sẽ tự động ưu tiên biến môi trường nếu có
    DATABASE_URL: str = "postgresql://kpi_user:kpi_password@db:5432/kpi_db"
    SECRET_KEY: str = "kpi-secret-key-2024-hai-quan-khu-vuc-8"
    ALGORITHM: str = "HS256"
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 480
    
    class Config:
        case_sensitive = True
        # Nếu có file .env thì load từ đó
        env_file = ".env" 

settings = Settings()