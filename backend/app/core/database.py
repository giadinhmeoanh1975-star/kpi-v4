from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession, async_sessionmaker
from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.engine import make_url
from typing import AsyncGenerator
from .config import settings

# 1. Parse URL
url_obj = make_url(settings.DATABASE_URL)

# 2. Driver mapping
if url_obj.drivername in ["postgres", "postgresql"]:
    url_obj = url_obj.set(drivername="postgresql+asyncpg")

# 3. Connect Args
connect_args = {
    "command_timeout": 60
}

# Fix lỗi Port String -> Int
if url_obj.port:
    connect_args["port"] = int(url_obj.port)

# Mẹo quan trọng cho Supabase Pooler (kể cả Session hay Transaction mode)
# Tắt prepared statements để tránh lỗi cache
connect_args["statement_cache_size"] = 0

engine = create_async_engine(
    url_obj,
    echo=settings.DATABASE_ECHO,
    pool_pre_ping=True,
    pool_size=20,
    max_overflow=30,
    pool_recycle=300,
    connect_args=connect_args # Đã bao gồm fix port và tắt cache
)

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
            # await session.commit() # Để controller tự xử lý commit
        except Exception:
            await session.rollback()
            raise
        finally:
            await session.close()