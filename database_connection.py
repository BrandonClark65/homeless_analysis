from sqlalchemy import create_engine
from config import db_password

db_string = f"postgresql://postgres:{db_password}@127.0.0.1:5432/homeless_db"

engine = create_engine(db_string)