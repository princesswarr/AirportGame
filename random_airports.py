import time, os, importlib, random
import mysql.connector
from geopy import distance
connection = mysql.connector.connect(
    host='127.0.0.1',
    port=3306,
    database='flight_game',
    user='root',
    password='MariaDB123',
    autocommit=True
)
new_location = "Helsinki Vantaa Airport"
def five_locations(new_location):
    print(new_location)
    sql = "SELECT name FROM airport WHERE airport.iso_country = 'FI' and name <> '" + new_location + "' ;"

    cursor = connection.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()

    airports = []
    for x in range (116):
        airports.append(result[x][0])
    return airports

def index_selection(new_location):
    airports = five_locations(new_location)
    chosen = random.sample(airports, 5)
    print(chosen)
    return chosen
list = index_selection(new_location)
print (list)