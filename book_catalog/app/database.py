from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

SQLALCHEMY_DATABASE_URL = "postgresql://test_fxd0_user:uKJ3hDMHV3rXBB1CModc6iYcbVxmaYim@dpg-crtk4ktds78s73erhi2g-a.oregon-postgres.render.com/test_fxd0"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
