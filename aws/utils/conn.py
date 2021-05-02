#!/usr/bin/python3

import MySQLdb

from params import host, user, password, database

db = MySQLdb.connect(host,user,password,database)

cursor = db.cursor()

sql = "SELECT * FROM movies \
       WHERE ID > '%D'" % (100)

try:
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        name = row[0]
        title = row[1]
        print("Nombre = %s, titulo = %s") % \
            (name, title)
except 
    print("Error: unable to fetch data")


db.close()