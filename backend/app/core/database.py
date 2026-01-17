from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession
from sqlalchemy.orm import sessionmaker, declarative_base
from sqlalchemy.engine import make_url
from .config import settings

# 1. Parse URL từ string sang object cấu trúc
db_url_obj = make_url(settings.DATABASE_URL)

# 2. Xử lý driver: Chuyển 'postgres' hoặc 'postgresql' thành 'postgresql+asyncpg'
# Render thường trả về 'postgres://', còn code cần 'postgresql+asyncpg://'
if db_url_obj.drivername in ["postgres", "postgresql"]:
    db_url_obj = db_url_obj.set(drivername="postgresql+asyncpg")

# 3. QUAN TRỌNG NHẤT: Ép kiểu Port về INT
# Đây là bước sửa lỗi "TypeError: '<' not supported..."
if db_url_obj.port:
    db_url_obj = db_url_obj.set(port=int(db_url_obj.port))

# 4. Tạo engine
# Lưu ý: Cần convert object URL về string đe engine sử dụng, hoặc truyền thẳng object (tuỳ phiên bản)
# Để an toàn nhất, ta dùng db_url_obj trực tiếp vì create_async_engine hỗ trợ nó.
engine = create_async_engine(db_url_obj, echo=False)

AsyncSessionLocal = sessionmaker(engine, class_=AsyncSession, expire_on_commit=False)
Base = declarative_base()

async def get_db():
    async with AsyncSessionLocal() as session:
        try:
            yield session
        finally:
            await session.close()