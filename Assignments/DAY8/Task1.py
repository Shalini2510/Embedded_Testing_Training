# mysql_fetch_records.py
import mysql.connector

# Database connection settings
username = 'your_username'
password = 'your_password'
host = 'your_host'
database = 'your_database'

# Establish a connection to the database
cnx = mysql.connector.connect(
    user=username,
    password=password,
    host=host,
    database=database
)

# Create a cursor object to execute queries
cursor = cnx.cursor()

# Query to fetch records from a table
query = "SELECT * FROM your_table_name"

# Execute the query
cursor.execute(query)

# Fetch all the records
records = cursor.fetchall()

# Print the records
for record in records:
    print(record)

# Close the cursor and connection
cursor.close()
cnx.close()