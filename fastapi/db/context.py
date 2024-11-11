from sqlalchemy import create_engine
from sqlalchemy.orm import Session, sessionmaker
from constants import DATABASE_URI

def get_db_engine():
    engine = create_engine(DATABASE_URI)
    return engine