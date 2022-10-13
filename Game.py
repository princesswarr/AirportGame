import time, os, importlib, random
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
os.system('cls')
version_of_the_game = "Airport Game v.0.4.1"

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
        print("Are you ready to play the game? (y/n) ")
        time.sleep(1)
        ready_to_play = input("Enter: ")
        if ready_to_play == "n":
            os.system('cls')
            importlib.reload(Tutorial)
            continue
        if ready_to_play == "y":
            break
        else:
            print("Check your spelling!")
    break

# The Actual Game

#Difficulty choice

os.system('cls')
print("Choose your difficulty \nEasy (1)\nMedium (2)\nHard (3)")
dif_choice = int(input("Enter difficulty: "))
difficulty = 0
if dif_choice == 1:
    difficulty = 500
    time.sleep(0.5)
    print("\nChosen difficulty = Easy")
elif dif_choice == 2:
    difficulty = 350
    time.sleep(0.5)
    print("\nChosen difficulty = Medium")
elif dif_choice == 3:
    difficulty = 200
    time.sleep(0.5)
    print("\nChosen difficulty = Hard")
time.sleep(0.8)
os.system('cls')
#Game - Main Function

def game(difficulty):
    def startlocation():
        sql = "select airport.name from airport inner join country on country.iso_country = airport.iso_country "
        sql += "where country.name = 'Finland' and airport.name NOT IN (SELECT airport.NAME from airport "
        sql += "inner join country ON country.iso_country = airport.iso_country WHERE country.name = 'Finland' AND airport.type IN "
        sql += "('large_airport')) AND rand() limit 1"
        cursor = connection.cursor()
        cursor.execute(sql)
        result = cursor.fetchall()
        for row in result:
            startlocation = row[0]
        return startlocation


    def new_turn(new_location, coleft, current_score):
        #FUNCTIONS
        start = "Finland"
        def airport_and_package():
            def pkgtype():
                type = random.randint(1, 3)
                if type == 1:
                    type = "Silver"
                elif type == 2:
                    type = "Bronze"
                elif type == 3:
                    type = "Gold  "
                return type
            def airport():
                sql = "select airport.name, airport.latitude_deg, airport.longitude_deg from airport inner join country " \
                      "on country.iso_country = airport.iso_country "
                sql += "where country.name = 'Finland' and airport.name NOT IN (SELECT airport.NAME from airport "
                sql += "inner join country ON country.iso_country = airport.iso_country WHERE country.name = 'Finland' " \
                       "AND airport.name != '"+new_location+"' AND airport.type IN "
                sql += "('large_airport')) AND rand() limit 1"
                cursor = connection.cursor()
                cursor.execute(sql)
                result = cursor.fetchall()
                for row in result:
                    rand_airport = row[0]
                return rand_airport
            def airportdist1():
                sql = "select airport.latitude_deg, airport.longitude_deg from airport " \
                      "where airport.name = '"+new_location+"'"
                cursor = connection.cursor()
                cursor.execute(sql)
                result = cursor.fetchall()
                for row in result:
                    y = (row[0],row[1])
                return y
            def airportdist2():
                sql = "select airport.latitude_deg, airport.longitude_deg from airport " \
                      "where airport.name = '"+random_airport+"'"
                cursor = connection.cursor()
                cursor.execute(sql)
                result = cursor.fetchall()
                for row in result:
                    x = (row[0],row[1])
                return x
            # RANDOM AIRPORT




            random_airport = airport()
            dist = int(((int(distance.distance(airportdist2(), airportdist1()).km))*112)/1000)
            airport_pkg = [f"{pkgtype()}", f"{random_airport}", f"{dist}"]
            return airport_pkg
        def calculations(airport_pkg, co2_left, score):
            distance_to = int(airport_pkg[2])
            co2_left = co2_left - distance_to
            airport_pkg.append(co2_left)

            if co2_left <= 0:
                airport_pkg.append(score)
                returnlist = airport_pkg
                return returnlist

            if airport_pkg[0] == "Bronze":
                amount_points = weather(1)
                time.sleep(2)
            elif airport_pkg[0] == "Silver":
                amount_points = weather(2)
                time.sleep(2)
            elif airport_pkg[0] == "Gold  ":
                amount_points = weather(3)
                time.sleep(2)
            score = score + amount_points
            airport_pkg.append(score)
            returnlist = airport_pkg
            return returnlist

        ### WEATHER & POINT CALCULATION

        def weather (type):
            if type == 1:
                print("Points gained: 100 ")
                time.sleep(1)
                chance_of_rain = random.randint(1,100)
                randomstring = random.randint (1,2)
                weather_effect = 0
                if chance_of_rain <= 2:
                    weather_effect = 10
                    if randomstring == 1:
                        print("Oh NO! An unlikely burst of rain has slashed your points to 90")
                        time.sleep(2)
                    if randomstring == 2:
                        print("Oh shoot... Extreme sunshine has slashed your points to 90")
                        time.sleep(2)
                amount_left_points = 100 - weather_effect

            elif type == 2:
                print("Points gained: 200 ")
                time.sleep(1)
                chance_of_rain = random.randint(1, 100)
                randomstring = random.randint(1, 2)
                weather_effect = 0
                if chance_of_rain <= 2:
                    weather_effect = 10
                    if randomstring == 1:
                        print("Oh NO! An unlikely burst of rain has slashed your points to 190")
                        time.sleep(2)
                    if randomstring == 2:
                        print("Oh shoot... Extreme sunshine has slashed your points to 190")
                        time.sleep(2)

                if chance_of_rain<25 and chance_of_rain >=3:
                    weather_effect = 110
                    if randomstring == 1:
                        print("Oh NO! A rare windy storm has reduced your points to 90")
                        time.sleep(2)
                    if randomstring == 2:
                        print("Oh man! A lightning storm has cut your points to 90")
                        time.sleep(2)
                amount_left_points = 200 - weather_effect
            elif type == 3:
                print("Points gained: 300 ")
                time.sleep(1)
                chance_of_rain = random.randint(1, 100)
                randomstring = random.randint(1, 2)
                weather_effect = 0
                if chance_of_rain <= 2:
                    weather_effect = 20
                    if randomstring == 1:
                        print("Oh NO! An unlikely burst of rain has slashed your points to 280")
                        time.sleep(2)
                    if randomstring == 2:
                        print("Oh shoot... Extreme sunshine has slashed your points to 280")
                        time.sleep(2)

                if chance_of_rain < 25 and chance_of_rain >= 3:
                    weather_effect = 210
                    if randomstring == 1:
                        print("Oh NO! A loud thunder has reduced your points to 90")
                        time.sleep(2)
                    if randomstring == 2:
                        print("Oh man! A TORNADO has cut your points to 90")
                        time.sleep(2)
                if chance_of_rain < 55 and chance_of_rain >= 25:
                    weather_effect = 130
                    if randomstring == 1:
                        print("Oh NO! A loud thunder has reduced your points to 90")
                        time.sleep(2)
                    if randomstring == 2:
                        print("Oh man! A TORNADO has cut your points to 90")
                        time.sleep(2)
                amount_left_points = 300 - weather_effect

            return amount_left_points

        player_location = new_location

        airport_pkg1 = airport_and_package()
        airport_pkg1.append(1)

        airport_pkg2 = airport_and_package()
        airport_pkg2.append(2)

        airport_pkg3 = airport_and_package()
        airport_pkg3.append(3)

        airport_pkg4 = airport_and_package()
        airport_pkg4.append(4)

        airport_pkg5 = airport_and_package()
        airport_pkg5.append(5)

        co2_left = coleft
        score = current_score
        print(f"You are in: {player_location}                 "
              f"CO2 left: {co2_left}                 "
              f"Score: {score} "
              f"\nChoose next location: "
              f"\n      Type        Airport                                                  Distance (CO2)"
              f"\n{airport_pkg1[3]}.    {airport_pkg1[0]}      {airport_pkg1[1]:<35s}                      {airport_pkg1[2]}"
              f"\n{airport_pkg2[3]}.    {airport_pkg2[0]}      {airport_pkg2[1]:<35s}                      {airport_pkg2[2]}"
              f"\n{airport_pkg3[3]}.    {airport_pkg3[0]}      {airport_pkg3[1]:<35s}                      {airport_pkg3[2]}"
              f"\n{airport_pkg4[3]}.    {airport_pkg4[0]}      {airport_pkg4[1]:<35s}                      {airport_pkg4[2]}"
              f"\n{airport_pkg5[3]}.    {airport_pkg5[0]}      {airport_pkg5[1]:<35s}                      {airport_pkg5[2]}")
        Choice = int(input("Enter: "))

        if Choice == 1:
            returnlist = calculations(airport_pkg1,co2_left,score)
        if Choice == 2:
            returnlist = calculations(airport_pkg2,co2_left,score)
        if Choice == 3:
            returnlist = calculations(airport_pkg3,co2_left,score)
        if Choice == 4:
            returnlist = calculations(airport_pkg4,co2_left,score)
        if Choice == 5:
            returnlist = calculations(airport_pkg5,co2_left,score)

        return returnlist
    starting_score = 0
    starting_location = startlocation()
    starting_difficulty = difficulty

    returnls = new_turn(starting_location,starting_difficulty,starting_score)
    for x in range (1000):
        os.system('cls')
        if returnls[4] <= 0:
            break
        returnls = new_turn(returnls[1],returnls[4],returnls[5])

    print("\n\n\n\n\nGame Over\n\n")
    print(f"Your score was: {returnls[5]}")
    return returnls[5]

final_score = game(difficulty)
while True:
    replay_choice = input("Do you wish to replay? (y/n) \n"
                          "Enter: ")
    if replay_choice == "y":
        time.sleep(0.5)
        os.system('cls')
        final_score = game(difficulty)
    elif replay_choice == "n":
        break
    else:
        print("Check your spelling\n\n")
        continue
###