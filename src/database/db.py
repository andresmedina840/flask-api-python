import psycopg2
from psycopg2 import DatabaseError
from decouple import config


def get_connection():
    try:
        return psycopg2.connect(
                host='150.136.169.25',
                user='postgres',
                password='postgres',
                database='postgres'
        )
        print("locadas")
    except DatabaseError as ex:
        raise ex


def crearTabla():
    connection = get_connection()
    cursor = connection.cursor()
    query="CREATE TABLE usuario(nombre varchar(30), correo varchar(30), email varchar(30))"
    try:
        cursor.execute(query)
    except:
        print("La tabla ya existe")
    cursor.close

crearTabla()