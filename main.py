import sqlite3
import sys
from prettytable import PrettyTable


def select(query):
  conn = sqlite3.connect('database.db')
  cursor = conn.cursor()

  cursor.execute(query)

  columns = [desc[0] for desc in cursor.description]

  rows = cursor.fetchall()

  cursor.close()
  conn.close()

  table = PrettyTable(columns)
  table.align = "l"

  for row in rows:
    table.add_row(row)

  return table


def compare(table1, table2):
  if table1.field_names != table2.field_names:
    return False

  if table1._rows != table2._rows:
    return False

  return True


if __name__ == "__main__":
  test_num = sys.argv[1]

  with open(f"tests/{test_num}.sql") as file:
    table1 = select(file.read())

  with open(f"solutions/{test_num}.sql") as file:
    table2 = select(file.read())

  print(f"Your answer:\n{table1}")
  print(f"Expected answer:\n{table2}")
  print(
      f"You answer is {'correct' if compare(table1, table2) else 'incorrect'}!"
  )
