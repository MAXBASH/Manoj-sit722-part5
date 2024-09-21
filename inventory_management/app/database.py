from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

SQLALCHEMY_DATABASE_URL = "postgresql://test_m48p_user:l9DCnsKLYJ60gyq1cbFAwqLQLFUGq5sS@dpg-crnfg688fa8c738fbcq0-a.oregon-postgres.render.com/test_m48p"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
