#!/usr/bin/python3
import sqlite3
db = "./students.db"
conn = sqlite3.connect(db)
c = conn.cursor()
cmd = "CREATE TABLE students (Name TEXT, Last TEXT)"
c.execute(cmd)
conn.commit()
data = [
    ("Robert", "Tables"), ("Toby", "Huang"), ("Hannah", "Sindorf"),
    ("Daniel", "Frey"), ("Ray", "Ruazol"), ("Roger", "Huba"),
    ("Joyce", "Liao"), ("Scott", "Curie"), ("Vince", "Masten"),
    ("Matthew", "Brown")
    ]
c.executemany("INSERT INTO students VALUES (?,?)", data)
conn.commit()
conn.close()