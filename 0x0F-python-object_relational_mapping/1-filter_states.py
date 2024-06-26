#!/usr/bin/python3
import MySQLdb
import sys

if __name__ == "__main__":
    # Get the MySQL credentials and database name from command line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    db_name = sys.argv[3]

    # Connect to the MySQL server
    db = MySQLdb.connect(host="localhost", port=3306, user=username, passwd=password, db=db_name)

    # Create a cursor object to interact with the database
    cur = db.cursor()

    # Execute the SQL query to fetch all states with names starting with 'N'
    cur.execute("SELECT * FROM states WHERE name LIKE 'N%' ORDER BY id ASC")

    # Fetch all the rows from the executed query
    rows = cur.fetchall()

    # Iterate through the rows and print each row
    for row in rows:
        print(row)

    # Close the cursor and database connection
    cur.close()
    db.close()
