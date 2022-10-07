#BRANDON: Useful functions that need editing to work in the project program
import mysql.connector
connection = mysql.connector.connect(
    host='127.0.0.1',
    port= 3306,
    database = 'flight_game',
    user = 'root',
    password = 'MariaDB123',
    autocommit = True
    )

#Emissions 112g CO2/KM
#selects distance once converted from the other function for distance calculation
def co2_converter(distance):
    co2_em = distance * 112
    return co2_em


#Adds emmissions to the Game table / Updates Co2 Consumed
def consumption(co2_em)
    sql = "UPDATE game SET co2_consumed = + '"
    sql += co2_em + "' WHERE id = x ;"
    cursor = connection.cursor()
    cursor.execute(sql)





#3 types of packages: Gold-300pts, Silver-200pts, Bronze-100pts
#Package_type(Column to be added to airport table, containing either GOLD, SILVER, BRONZE) packet found in current location
#SCORE: Column to be added to game table to store the score of the players (Also find a way to store the ID of the player currently playing)
def points():

    sql = "select package_type from airport where ident in(select location from game);"

    cursor = connection.cursor()
    cursor.execute(sql)
    pkt = cursor.fetchall()

    if pkt == "GOLD" :
        sql = "UPDATE game SET score = score + 300 WHERE id = x ;"
        cursor = connection.cursor()
        cursor.execute(sql)

    elif pkt == "SILVER" :
        sql = "UPDATE game SET score = score + 200 WHERE id = x ;"
        cursor = connection.cursor()
        cursor.execute(sql)

    elif pkt == "BRONZE" :
        sql = "UPDATE game SET score = score + 100 WHERE id = x ;"
        cursor = connection.cursor()
        cursor.execute(sql)

    else:
        break

#Función para añadir usuario a la tabla
#Addind user
def add_user(user_name)
    sql = "INSERT INTO game (screen_name) VALUES ('"
    sql += user_name + "') ;"

    cursor = connection.cursor()
    cursor.execute(sql)

#Difficulty level chooser [GAME MODE] (Could add Column showing Gamemode)
#user chooses between Level 1 (normal), 2 (Hard), 3 (Really Hard). CO2 Budget is changed accordingly
def difficulty_level(level)
    if level == 1 :
        sql = "INSERT INTO game (co2_budget) VALUES (10000) ; "

        cursor = connection.cursor()
        cursor.execute(sql)
    elif level == 2 :
        sql = "INSERT INTO game (co2_budget) VALUES (8000) ; "

        cursor = connection.cursor()
        cursor.execute(sql)
    else:
        sql = "INSERT INTO game (co2_budget) VALUES (5000) ; "

        cursor = connection.cursor()
        cursor.execute(sql)



#aaaaa

#FUNCTION THAT UPDATES THE HIGHEST SCORE IN DATABASE (IF THE USER'S FINAL SCORE IS GREATER THEN IT UPDATES THE DATABASE)
def highscore_set(username,score):
    sql = "select Highscore from game where id = '1' ; "
    cursor = connection.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    print(result[0][0])
    points = int(result[0][0])
    if cursor.rowcount > 0:
        if points < score :

            sql2 = "UPDATE game SET Highscore = '"
            sql2 += str(score) + "', screen_name = '"
            sql2 += username + "' WHERE id = '1' ; "
            cursor = connection.cursor()
            cursor.execute(sql2)