#!/usr/bin/python3
"""
Script that sets up SQLAlchemy with MySQL for State class.
"""
import sys
from sqlalchemy import create_engine
from model_state import Base, State

if __name__ == "__main__":
    # Create the MySQL engine to connect
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]
    engine = create_engine('mysql+mysqldb://{}:{}@localhost/{}'.format(username, password, database),
                           pool_pre_ping=True)

    # Create all tables in the database that are defined in Base's subclasses
    Base.metadata.create_all(engine)

