import os
import sqlite3
from typing import Union


def execute_queries_from_folder(db_name: str, folder_name: str) -> None:
    conn = sqlite3.connect(db_name)
    cursor = conn.cursor()

    folder_path: Union[str, bytes] = os.path.abspath(os.path.join(os.path.dirname(__file__), folder_name))

    for filename in os.listdir(folder_path):
        if filename.endswith(".sql"):
            query_file_path = os.path.join(folder_path, filename)

            with open(query_file_path, 'r') as file:
                query = file.read()

            try:
                cursor.execute(query)
                conn.commit()
                print(f"Query in {query_file_path} executed successfully.")
            except sqlite3.Error as e:
                print(f"Error executing query in {query_file_path}: {e}")

    conn.close()


if __name__ == "__main__":
    database_name = 'your_database_name.db'
    queries_folder = 'queries'

    execute_queries_from_folder(database_name, queries_folder)
