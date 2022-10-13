import random
import time, os, importlib
import mysql.connector
from geopy import distance

connection = mysql.connector.connect(
    host='127.0.0.1',
    port=3306,
    database='flight_game',
    user='root',
    password='1234',
    autocommit=True
)

#
version_of_the_game = "Airport Game v.0.3"

# Intro the the Game + Tutorial

print(f"Hello and Welcome to {version_of_the_game}")
time.sleep(0.8)
print("Do you want to play a new game (1) or the tutorial (2) ?")
time.sleep(1.3)
choice_1 = int(input("Enter: "))
os.system('cls')
while choice_1 == 2:
    Tutorial = importlib.import_module('Tutorial')

    while True:
        print("Are you ready to play the game? (yes / no) ")
        time.sleep(1)
        ready_to_play = input("Enter: ")
        if ready_to_play == "no":
            os.system('cls')
            importlib.reload(Tutorial)
            continue
        if ready_to_play == "yes":
            break
        else:
            print("Check your spelling!")
    break


os.system('cls')
print("Choose your difficulty \nEasy (1)\nMedium (2)\nHard (3)")
dif_choice = int(input("Enter difficulty: "))
if dif_choice == 1:
    co2_budget = 600
    time.sleep(0.5)
    print("\nChosen difficulty = Easy")
elif dif_choice == 2:
    co2_budget = 400
    time.sleep(0.5)
    print("\nChosen difficulty = Medium")
elif dif_choice == 3:
    co2_budget = 200
    time.sleep(0.5)
    print("\nChosen difficulty = Hard")
time.sleep(0.8)
os.system('cls')


airport = []
package = []


def pkgtype():
    t = random.randint(1, 3)
    if t == 1:
        type = "Silver"
    elif t == 2:
        type = "Bronze"
    elif t == 3:
        type = "Gold  "
    return type


def starting_point1(start):
    sql = "select airport.name, airport.municipality from airport inner join country on country.iso_country = airport.iso_country "
    sql += "where country.name = '" + start + "' and airport.type in "
    sql += "('large_airport', 'medium_airport') ORDER BY type LIMIT 1"
    cursor = connection.cursor()
    cursor.execute(sql)
    result1 = cursor.fetchall()
    if cursor.rowcount > 0:
        for row in result1:
            print(f'Starting point: {row[0], row[1]}')

    return


def starting_point2(start):

    sql = "select airport.latitude_deg, airport.longitude_deg from airport inner join country on country.iso_country = airport.iso_country "
    sql += "where country.name = '" + start + "' and airport.type in "
    sql += "('large_airport', 'medium_airport') ORDER BY type LIMIT 1"
    cursor = connection.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    if cursor.rowcount > 0:
        for row in result:
            return row[0], row[1]


def airport_choose():
    sql = "select airport.name, airport.latitude_deg, airport.longitude_deg from airport inner join country on country.iso_country = airport.iso_country "
    sql += "where country.name = '" + start + "' and airport.name NOT IN (SELECT airport.NAME from airport "
    sql += "inner join country ON country.iso_country = airport.iso_country WHERE country.name = '" + start + "' AND airport.type IN "
    sql += "('large_airport')) AND rand() limit 5"
    cursor = connection.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    print(f"        \n      Type        Airport                  Distance            CO2 Required")
    if cursor.rowcount > 0:
        i = 1
        for row in result:
            pack = pkgtype()
            print(
                f"\n({i})   {pack}      {row[0]}           {int(distance.distance(starting_point2(start), (row[1], row[2])).km)} kms          {int(((distance.distance(starting_point2(start), (row[1], row[2])).km) * 112) / 1000)}")
            time.sleep(0.5)
            airport.append(row[0])
            package.append(pack)
            i += 1
    return


def weather():
    chance_of_rain = random.randint(1, 100)
    randomstring = random.randint(1, 2)
    weather_effect = 0
    global total_points

    if type == 'Silver':
        print("Points gained: 100 ")
        total_points += 100
        time.sleep(1)

        if chance_of_rain <= 2:
            weather_effect = 90
            if randomstring == 1:
                print("Oh NO! An unlikely burst of rain has slashed your points by 90")
                time.sleep(2)
            if randomstring == 2:
                print("Oh shoot... Extreme sunshine has slashed your points by 90")
                time.sleep(2)
        total_points = total_points - weather_effect

    elif type == 'Bronze':
        print("Points gained: 200 ")
        total_points = total_points + 200
        time.sleep(1)

        if chance_of_rain <= 2:
            weather_effect = 10
            if randomstring == 1:
                print("Oh NO! An unlikely burst of rain has slashed your points by 190")
                time.sleep(2)
            if randomstring == 2:
                print("Oh shoot... Extreme sunshine has slashed your points by 190")
                time.sleep(2)

        if chance_of_rain < 25 and chance_of_rain >= 3:
            weather_effect = 110
            if randomstring == 1:
                print("Oh NO! A rare windy storm has reduced your points by 90")
                time.sleep(2)
            if randomstring == 2:
                print("Oh man! A lightning storm has cut your points by 90")
                time.sleep(2)
        total_points = total_points - weather_effect
    elif type == 'Gold  ':
        print("Points gained: 300 ")
        total_points += 300
        time.sleep(1)

        if chance_of_rain <= 2:
            weather_effect = 20
            if randomstring == 1:
                print("Oh NO! An unlikely burst of rain has slashed your points by 280")
                time.sleep(2)
            if randomstring == 2:
                print("Oh shoot... Extreme sunshine has slashed your points by 280")
                time.sleep(2)
            total_points - 280

        if chance_of_rain < 25 and chance_of_rain >= 3:
            weather_effect = 210
            if randomstring == 1:
                print("Oh NO! A loud thunder has reduced your points by 90")
                time.sleep(2)
            if randomstring == 2:
                print("Oh man! A TORNADO has cut your points by 90")
                time.sleep(2)
            total_points - 90
        if chance_of_rain < 55 and chance_of_rain >= 25:
            weather_effect = 130
            if randomstring == 1:
                print("Oh NO! A loud thunder has reduced your points by 90")
                time.sleep(2)
            if randomstring == 2:
                print("Oh man! A TORNADO has cut your points by 90")
                time.sleep(2)
            total_points - 90
    print(f'Total Points: {total_points}')
    return


def co2_consumed():
    sql = "select airport.latitude_deg, airport.longitude_deg from airport where airport.name = '" + travel + "'"
    cursor = connection.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    if cursor.rowcount > 0:
        for row in result:
            x = int(((distance.distance(starting_point2(start), (row[0], row[1])).km) * 112) / 1000)
    return x

print(f'You have {co2_budget} Co2 Budget')

start = "Finland"
starting_point1(start)
time.sleep(1.3)
print('\nLets start the game')
time.sleep(1.3)
print('\nYou have 5 different airports to choose from.')
time.sleep(1.3)
print('\nChoose your destination wisely.\n')
time.sleep(1.3)
total_points = 0
while co2_budget > 0:
    airport.clear()
    package.clear()
    airport_choose()
    index = int(input("Choose: "))
    travel = airport[index - 1]
    type = package[index - 1]
    print(travel, type)
    co2_budget = co2_budget - co2_consumed()
    print(f'Current Co2 Level: {co2_budget}')
    weather()

print('Game Over')
print(f'Your Points: {total_points}')
