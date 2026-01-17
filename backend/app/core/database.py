from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession
from sqlalchemy.orm import sessionmaker, declarative_base
from sqlalchemy.engine import make_url # <--- Thêm import này
from .config import settings

# 1. Parse URL từ string sang object để dễ xử lý
db_url_obj = make_url(settings.DATABASE_URL)

# 2. Xử lý vụ Render dùng 'postgres://' thay vì 'postgresql://'
# Bước này cực kỳ quan trọng vì Render thường trả về 'postgres://'
if db_url_obj.drivername == "postgres":
    db_url_obj = db_url_obj.set(drivername="postgresql+asyncpg")
elif db_url_obj.drivername == "postgresql":
    db_url_obj = db_url_obj.set(drivername="postgresql+asyncpg")

# 3. SỬA LỖI 500: Đảm bảo port là số nguyên (INT)
# Lỗi của bạn xảy ra vì port đang bị hiểu là string "5432"
if db_url_obj.port is not None:
    db_url_obj = db_url_obj.set(port=int(db_url_obj.port))

# 4. Tạo engine từ object URL đã chuẩn hóa
engine = create_async_engine(db_url_obj, echo=False)

AsyncSessionLocal = sessionmaker(engine, class_=AsyncSession, expire_on_commit=False)
Base = declarative_base()

async def get_db():
    async with AsyncSessionLocal() as session:
        try:
            yield session
        finally:
            await session.close()