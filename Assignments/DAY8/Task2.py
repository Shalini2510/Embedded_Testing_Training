# sqlite_insert_record.py
import sqlite3

# Database connection settings
database_file = 'example.db'

# Establish a connection to the database
conn = sqlite3.connect(database_file)

# Create a cursor object to execute queries
cursor = conn.cursor()

# Query to insert a new record into a table
query = "INSERT INTO your_table_name (column1, column2, column3) VALUES (?,?,?)"

# Values to be inserted
values = ('John', 'Doe', 25)

# Execute the query
cursor.execute(query, values)

# Commit the changes
conn.commit()

# Print a success message
print("Record inserted successfully!")

# Close the cursor and connection
cursor.close()
conn.close()