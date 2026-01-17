from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession, async_sessionmaker
from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.engine import make_url
from typing import AsyncGenerator
from .config import settings

# 1. Parse URL cấu hình từ Settings
url_obj = make_url(settings.DATABASE_URL)

# 2. Xử lý Driver cho Render (Render trả về postgres://, ta cần postgresql+asyncpg://)
if url_obj.drivername.startswith("postgres"):
    url_obj = url_obj.set(drivername="postgresql+asyncpg")

# 3. CHUẨN BỊ THAM SỐ KẾT NỐI (CONNECT ARGS)
# Đây là nơi sửa lỗi "TypeError: '<' not supported between instances of 'str' and 'int'"
connect_args = {
    "statement_cache_size": 0, 
    "command_timeout": 60
}

# Nếu trong URL có Port, ta ép kiểu sang INT và đưa vào connect_args
# Để đảm bảo asyncpg không bao giờ nhận Port là string
if url_obj.port:
    connect_args["port"] = int(url_obj.port)

# 4. Tạo Async Engine với cấu hình tối ưu (High Performance)
engine = create_async_engine(
    url_obj, # Truyền object URL đã xử lý
    echo=settings.DATABASE_ECHO,
    
    # Tham số tối ưu từ V4 của bạn
    pool_pre_ping=True,
    pool_size=20,
    max_overflow=30,
    pool_recycle=300,
    pool_timeout=30,
    
    # Tham số connect_args đã được fix port
    connect_args=connect_args
)

# Create session factory
async_session_maker = async_sessionmaker(
    engine,
    class_=AsyncSession,
    expire_on_commit=False,
    autocommit=False,
    autoflush=False,
)

class Base(DeclarativeBase):
    pass

async def get_db() -> AsyncGenerator[AsyncSession, None]:
    async with async_session_maker() as session:
        try:
            yield session
            # Chỉ commit nếu không có lỗi xảy ra trong quá trình xử lý request
            # await session.commit() -> Code cũ của bạn auto commit ở đây
            # Nhưng tốt nhất là nên để controller quyết định commit.
            # Tuy nhiên để giống V1 mình sẽ giữ nguyên logic cũ của bạn.
            await session.commit()
        except Exception:
            await session.rollback()
            raise
        finally:
            await session.close()