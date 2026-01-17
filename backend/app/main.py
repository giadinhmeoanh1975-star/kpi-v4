from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from .core.config import settings
from .api.auth import router as auth_router
from .api.admin import router as admin_router
from .api.ke_khai import router as ke_khai_router

app = FastAPI(title=settings.PROJECT_NAME, version=settings.VERSION)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(auth_router, prefix="/api")
app.include_router(admin_router, prefix="/api")
app.include_router(ke_khai_router, prefix="/api")

@app.get("/")
async def root():
    return {"name": settings.PROJECT_NAME, "version": settings.VERSION, "module": "KPI v4"}

@app.get("/health")
async def health():
    return {"status": "ok"}
