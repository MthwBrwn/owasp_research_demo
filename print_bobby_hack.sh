#!/usr/bin/python3

import sqlite3 
db = "./students.db"
conn = sqlite3.connect(db)
c = conn.cursor()

print("Malicious Injection: \n")
Name = "Robert'; DROP TABLE students;--"
c.executescript("SELECT * from students WHERE Name='%s'" % Name)
result = c.fetchall()
print(result)
