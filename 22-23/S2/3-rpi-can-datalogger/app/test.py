import mysql.connector
from mysql.connector import Error

try:
    connection = mysql.connector.connect(
        host='regterschotdb2.cxicg0q4yzp8.eu-central-1.rds.amazonaws.com',
        database='atari-regtertestdata',
        user='MORE',
        password='MORE'
    )

    cursor = connection.cursor()

    # Assuming you already have a customer with id 123
    insert_query = """
    INSERT INTO raw_data (Base_ID, Value, Time, users_username) VALUES (%s, %s, %s, %s)
    """
    data = ('83', '123456', '2024-06-05 14:15:16.444865', 'MORE')  # Make sure 123 exists in customers table
    cursor.execute(insert_query, data)
    connection.commit()

except mysql.connector.Error as error:
    print(f"Failed to insert into MySQL table {error}")

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
