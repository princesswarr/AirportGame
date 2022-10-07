import time, os, importlib, random, mysql.connector
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

# The Actual Game

#Difficulty choice

os.system('cls')
print("Choose your difficulty \nEasy (1)\nMedium (2)\nHard (3)")
dif_choice = int(input("Enter difficulty: "))
difficulty = 0
if dif_choice == 1:
    difficulty = 10000
    time.sleep(0.5)
    print("\nChosen difficulty = Easy")
elif dif_choice == 2:
    difficulty = 6500
    time.sleep(0.5)
    print("\nChosen difficulty = Medium")
elif dif_choice == 3:
    difficulty = 3000
    time.sleep(0.5)
    print("\nChosen difficulty = Hard")
time.sleep(0.8)
os.system('cls')



#Game - Main Function
def new_turn(new_location, coleft, current_score):
    #FUNCTIONS
    start = "Finland"
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

    def function():
        def pkgtype():
            type = random.randint(1, 3)
            if type == 1:
                type = "Silver"
            elif type == 2:
                type = "Bronze"
            elif type == 3:
                type = "Gold  "
            return type

        # RANDOM AIRPORT
        random_airport = "bob"
        dist = 5
        airport_pkg = [f"{pkgtype()}", f"{random_airport}", f"{dist}"]
        return airport_pkg

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

    airport_pkg1 = function()
    airport_pkg1.append(1)

    airport_pkg2 = function()
    airport_pkg2.append(2)

    airport_pkg3 = function()
    airport_pkg3.append(3)

    airport_pkg4 = function()
    airport_pkg4.append(4)

    airport_pkg5 = function()
    airport_pkg5.append(5)

    sql = "select airport.name, airport.latitude_deg, airport.longitude_deg from airport inner join country on " \
          "country.iso_country = airport.iso_country "
    sql += "where country.name = '" + start + "' and airport.name NOT IN (SELECT airport.NAME from airport "
    sql += "inner join country ON country.iso_country = airport.iso_country WHERE country.name = '" + start + \
           "' AND airport.type IN "
    sql += "('large_airport')) AND airport.type IN ('large_airport', 'medium_airport') order by type, rand() limit 5"
    cursor = connection.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    if cursor.rowcount > 0:
        for row in result:
            times =0
            if times == 0:
                airport_pkg1.remove(1)
                airport_pkg1.insert(1,row[0])
                airport_pkg1.remove(2)
                airport_pkg1.insert(int(((distance.distance(starting_point2(start), (row[1], row[2])).km) * 112) / 1000))
            if times == 1:
                airport_pkg2.remove(1)
                airport_pkg2.insert(1,row[0])
                airport_pkg2.remove(2)
                airport_pkg2.insert(int(((distance.distance(starting_point2(start), (row[1], row[2])).km) * 112) / 1000))
            if times == 2:
                airport_pkg3.remove(1)
                airport_pkg3.insert(1,row[0])
                airport_pkg3.remove(2)
                airport_pkg3.insert(int(((distance.distance(starting_point2(start), (row[1], row[2])).km) * 112) / 1000))
            if times == 3:
                airport_pkg4.remove(1)
                airport_pkg4.insert(1,row[0])
                airport_pkg4.remove(2)
                airport_pkg4.insert(int(((distance.distance(starting_point2(start), (row[1], row[2])).km) * 112) / 1000))
            if times == 4:
                airport_pkg5.remove(1)
                airport_pkg5.insert(1,row[0])
                airport_pkg5.remove(2)
                airport_pkg5.insert(int(((distance.distance(starting_point2(start), (row[1], row[2])).km) * 112) / 1000))
            times = times +1


    co2_left = coleft
    score = current_score
    print(f"You are in: {player_location}                 "
          f"CO2 left: {co2_left}                 "
          f"Score: {score} "
          f"\nChoose next location: "
          f"\n      Type        Airport                  Distance (CO2)"
          f"\n{airport_pkg1[3]}.    {airport_pkg1[0]}      {airport_pkg1[1]}                      {airport_pkg1[2]}"
          f"\n{airport_pkg2[3]}.    {airport_pkg2[0]}      {airport_pkg2[1]}                      {airport_pkg2[2]}"
          f"\n{airport_pkg3[3]}.    {airport_pkg3[0]}      {airport_pkg3[1]}                      {airport_pkg3[2]}"
          f"\n{airport_pkg4[3]}.    {airport_pkg4[0]}      {airport_pkg4[1]}                      {airport_pkg4[2]}"
          f"\n{airport_pkg5[3]}.    {airport_pkg5[0]}      {airport_pkg5[1]}                      {airport_pkg5[2]}")
    Choice = int(input("Enter: "))



    if Choice == 1:
        distance_to = int(airport_pkg1[2])
        co2_left = co2_left - distance_to
        airport_pkg1.append(co2_left)


        if airport_pkg1[0] == "Bronze":
            amount_points = weather(1)
            time.sleep(2)
        elif airport_pkg1[0] == "Silver":
            amount_points = weather(2)
            time.sleep(2)
        elif airport_pkg1[0] == "Gold  ":
            amount_points = weather(3)
            time.sleep(2)
        score = score + amount_points
        airport_pkg1.append(score)
        returnlist = airport_pkg1

    if Choice == 2:
        distance_to = int(airport_pkg2[2])
        co2_left = co2_left - distance_to
        airport_pkg2.append(co2_left)


        if airport_pkg2[0] == "Bronze":
            amount_points = weather(1)
            time.sleep(2)
        elif airport_pkg2[0] == "Silver":
            amount_points = weather(2)
            time.sleep(2)
        elif airport_pkg2[0] == "Gold  ":
            amount_points = weather(3)
            time.sleep(2)
        score = score + amount_points
        airport_pkg2.append(score)
        returnlist = airport_pkg2

    if Choice == 3:
        distance_to = int(airport_pkg3[2])
        co2_left = co2_left - distance_to
        airport_pkg3.append(co2_left)


        if airport_pkg3[0] == "Bronze":
            amount_points = weather(1)
            time.sleep(2)
        elif airport_pkg3[0] == "Silver":
            amount_points = weather(2)
            time.sleep(2)
        elif airport_pkg3[0] == "Gold  ":
            amount_points = weather(3)
            time.sleep(2)
        score = score + amount_points
        airport_pkg3.append(score)
        returnlist = airport_pkg3
    if Choice == 4:
        distance_to = int(airport_pkg4[2])
        co2_left = co2_left - distance_to
        airport_pkg4.append(co2_left)


        if airport_pkg4[0] == "Bronze":
            amount_points = weather(1)
            time.sleep(2)
        elif airport_pkg4[0] == "Silver":
            amount_points = weather(2)
            time.sleep(2)
        elif airport_pkg4[0] == "Gold  ":
            amount_points = weather(3)
            time.sleep(2)
        score = score + amount_points
        airport_pkg4.append(score)
        returnlist = airport_pkg4

    if Choice == 5:
        distance_to = int(airport_pkg5[2])
        co2_left = co2_left - distance_to
        airport_pkg5.append(co2_left)


        if airport_pkg5[0] == "Bronze":
            amount_points = weather(1)
            time.sleep(2)
        elif airport_pkg5[0] == "Silver":
            amount_points = weather(2)
            time.sleep(2)
        elif airport_pkg5[0] == "Gold  ":
            amount_points = weather(3)
            time.sleep(2)
        score = score + amount_points
        airport_pkg5.append(score)
        returnlist = airport_pkg5

    return returnlist
starting_score = 0
starting_location = "helsinki"
starting_difficulty = difficulty

returnls = new_turn(starting_location,starting_difficulty,starting_score)
for x in range (10):
    os.system('cls')
    returnls = new_turn(returnls[1],returnls[4],returnls[5])

os.system('cls')
print("\n\n\n\n\nGame Over\n\n")
print(f"Your score was: {returnls[5]}")
###