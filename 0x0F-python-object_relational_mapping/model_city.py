#!/usr/bin/python3
"""
Module that contains the City class definition.
"""
from sqlalchemy import Column, Integer, String, ForeignKey
from model_state import Base

class City(Base):
    """
    City class inherits from Base and links to the cities table in the database.
    """
    __tablename__ = 'cities'
    id = Column(Integer, primary_key=True, nullable=False, autoincrement=True)
    name = Column(String(128), nullable=False)
    state_id = Column(Integer, ForeignKey('states.id'), nullable=False)

    def __repr__(self):
        return "<City(id={}, name='{}', state_id={})>".format(self.id, self.name, self.state_id)
