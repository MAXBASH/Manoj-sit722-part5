from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

SQLALCHEMY_DATABASE_URL = "postgresql://projectpart5_user:Dg0puVQqzqrs4kGaOY6jcl5pTLjxKoJV@dpg-creodg5ds78s73cf5l2g-a.oregon-postgres.render.com/projectpart5"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
