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

'''
        this country has 100 airports
        which airport do you want to start your game from?
        you can choose to travel to one of these airports
        collected 100 points
        bad weather: consumed 20% additional co2
        current co2 level
        next destination:
        collected 50 points
        good weather: consumed normal co2
        current co2 level
        game over
        your score:
        highest score:
'''

#
version_of_the_game = "Airport Game v.0.1"

# Intro the the Game + Tutorial

print(f"Hello and Welcome to {version_of_the_game}")
time.sleep(0.8)
print("Do you want to play a new game (1) or the tutorial (2) ?")
time.sleep(1.3)
choice_1 = int(input("Enter: "))
Total_points = 0
if choice_1 == 2:
    Tutorial = importlib.import_module('Tutorial')
    time.sleep(1)
    print("Are you ready to play the game? (yes / no) ")
    time.sleep(1)
    ready_to_play = input("Enter: ")
    if ready_to_play == "no":
        os.system('cls')
        importlib.reload(Tutorial)
elif choice_1 == 1:
    print('Choose Difficulty Level: Easy (1), Medium (2), Hard (3)')
    difficulty = input('-> ')

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
        sql += "('large_airport')) AND airport.type IN ('large_airport', 'medium_airport') order by type, rand() limit 5"
        cursor = connection.cursor()
        cursor.execute(sql)
        result = cursor.fetchall()
        if cursor.rowcount > 0:
            for row in result:
                print(f"{row[0]},       {distance.distance(starting_point2(start), (row[1], row[2])).km} kms,      points: {random.randint(1,3)}")
        return

    def go():
        sql = "SELECT name FROM goal ORDER BY RAND() LIMIT 1"
        cursor = connection.cursor()
        cursor.execute(sql)
        result = cursor.fetchall()
        for row in result:
            return row[0]


    co2_budget = int(0)
    if difficulty == '1':
        co2_budget = co2_budget + 10000
        print(f'You have {co2_budget} Co2 Budget')
        print('which country do you want to play in?')

        start = input('-> ')
        starting_point1(start)
        time.sleep(1.3)
        print('\nLets start the game')
        time.sleep(1.3)
        print('\nYou have 5 different airports to choose from.')
        time.sleep(1.3)
        print('\nChoose your desination wisely.\n')
        time.sleep(1.3)
        airport_choose()
        travel = input('Choose destination: ')
        summary = go()
        print(summary)
        if go() == 'Hot' or go() == 'Cold' or go() == 'Windy' or go() == 'Cloudy':
            co2_budget = co2_budget - 500
            print(f'Co2 level decreased by 500 more due to bad weather. Current Co2 level: {co2_budget}')
        else:
            print(f'Good weather. Current Co2 level: {co2_budget}')




    elif difficulty == '2':
        co2_budget = co2_budget + 8000
        print(f'You have {co2_budget} Co2 Budget')
    elif difficulty == '3':
        co2_budget = co2_budget + 6000
        print(f'You have {co2_budget} Co2 Budget')
    else:
        print('Input correct difficulty level.')




