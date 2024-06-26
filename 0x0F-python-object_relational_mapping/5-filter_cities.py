#!/usr/bin/python3
"""
This script lists all cities of a given state from the database hbtn_0e_4_usa.
"""
import MySQLdb
import sys

if __name__ == "__main__":
    # Get MySQL username, password, database name, and state name from arguments
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]
    state_name = sys.argv[4]

    # Connect to MySQL database
    db = MySQLdb.connect(host="localhost", user=username, passwd=password, db=database, port=3306)

    # Create a cursor object
    cursor = db.cursor()

    # Execute a query to retrieve all cities of the given state
    query = """
    SELECT cities.name
    FROM cities
    JOIN states ON cities.state_id = states.id
    WHERE states.name = %s
    ORDER BY cities.id ASC;
    """
    cursor.execute(query, (state_name,))

    # Fetch all the rows
    rows = cursor.fetchall()

    # Print the cities as a comma-separated list
    print(", ".join([row[0] for row in rows]))

    # Close the cursor and database connection
    cursor.close()
    db.close()

