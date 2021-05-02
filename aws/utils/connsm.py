#!/usr/bin/python3

import MySQLdb
import boto3
import ast

secret_name = "/rds_db/mysql"
region_name = "us-east-1"

client = session.client(
    service_name="secretsmanager",
    region_name=region_name
)

response = client.get_secret_value(
    SecretId=secret_name
)

secret = ast.literal_eval(response["SecretString"])

host = secret["host"]
user = secret["username"]
password = secret["password"]

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