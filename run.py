import sqlite3
import sys

with open(sys.argv[1]) as file:
  conn = sqlite3.connect('database.db')
  cursor = conn.cursor()

  sql_commands = file.read().split(';')

  for sql_command in sql_commands:
      if sql_command.strip():
          cursor.execute(sql_command)

  conn.commit()