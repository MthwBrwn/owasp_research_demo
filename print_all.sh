#!/usr/bin/python3

import sqlite3
db = "./students.db"
conn = sqlite3.connect(db)
c = conn.cursor()

print("Without exploiting injection vunerability: \n")
 
c.execute("SELECT * from students")
result = c.fetchall()
print(result)
