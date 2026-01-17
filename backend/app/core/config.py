import os

class Settings:
    PROJECT_NAME: str = "KPI Management System"
    VERSION: str = "4.0.0"
    DATABASE_URL: str = os.getenv("DATABASE_URL", "postgresql://kpi_user:kpi_password@db:5432/kpi_db")
    SECRET_KEY: str = os.getenv("SECRET_KEY", "kpi-secret-key-2024-hai-quan-khu-vuc-8")
    ALGORITHM: str = "HS256"
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 480

settings = Settings()
