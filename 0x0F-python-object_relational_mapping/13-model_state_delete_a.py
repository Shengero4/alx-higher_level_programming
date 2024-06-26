#!/usr/bin/python3
"""
Script that deletes all State objects with a name containing the letter 'a' from the database hbtn_0e_6_usa.
"""
import sys
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from model_state import Base, State

if __name__ == "__main__":
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]

    # Create the MySQL engine to connect
    engine = create_engine('mysql+mysqldb://{}:{}@localhost/{}'.format(username, password, database),
                           pool_pre_ping=True)

    # Bind the engine to the Base class
    Base.metadata.bind = engine

    # Create a configured "Session" class
    Session = sessionmaker(bind=engine)

    # Create a Session instance
    session = Session()

    # Query and delete all State objects containing the letter 'a'
    states_with_a = session.query(State).filter(State.name.like('%a%')).all()
    for state in states_with_a:
        session.delete(state)

    # Commit the transaction
    session.commit()

    # Optional: Confirm deletion by querying remaining states
    remaining_states = session.query(State).all()
    for state in remaining_states:
        print("{}: {}".format(state.id, state.name))

