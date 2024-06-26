#!/usr/bin/python3
"""
This script takes in arguments and displays all values in the states table of
hbtn_0e_0_usa where name matches the argument (safe from SQL injection).
"""
import MySQLdb
import sys

if __name__ == "__main__":
    # Get MySQL username, password, database name and state name from arguments
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]
    state_name = sys.argv[4]

    # Connect to MySQL database
    db = MySQLdb.connect(host="localhost", user=username, passwd=password, db=database, port=3306)

    # Create a cursor object
    cursor = db.cursor()

    # Execute a parameterized query to prevent SQL injection
    query = "SELECT * FROM states WHERE name = %s ORDER BY id ASC"
    cursor.execute(query, (state_name,))

    # Fetch all the rows
    rows = cursor.fetchall()

    # Print the rows
    for row in rows:
        print(row)

    # Close the cursor and database connection
    cursor.close()
    db.close()

