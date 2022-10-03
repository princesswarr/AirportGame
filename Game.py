import time, os, importlib
#
version_of_the_game = "Airport Game v.0.1"

# Intro the the Game + Tutorial

print(f"Hello and Welcome to {version_of_the_game}")
time.sleep(0.8)
print("Do you want to play a new game (1) or the tutorial (2) ?")
time.sleep(1.3)
choice_1 = int(input("Enter: "))
os.system('cls')
while choice_1 == 2:
    Tutorial = importlib.import_module('Tutorial')
    time.sleep(1)
    print("Are you ready to play the game? (yes / no) ")
    time.sleep(1)
    ready_to_play = input("Enter: ")
    if ready_to_play == "no":
        os.system('cls')
        importlib.reload(Tutorial)
        continue
    else:
        break

# The Actual Game

def pkgtype():
    type = random.randint(1, 3)
    if type == 1:
        type = "Silver"
    elif type == 2:
        type = "Bronze"
    elif type == 3:
        type = "Gold  "
    return type


player_location = "Helsinki-Vantaa Airport"
first_airport = 1
second_airport = 2
third_airport = 3
fourth_airport = 4
fifth_airport = 5
co2_left = difficulty
score = 350
print(f"You are in: {player_location}                 "
      f"CO2 left: {co2_left}                 "
      f"Score: {score} "
      f"\nChoose next location: "
      f"\n      Type        Airport                     Distance"
      f"\n1.    {pkgtype()}     {first_airport}"
      f"\n2.    {pkgtype()}     {second_airport}"
      f"\n3.    {pkgtype()}     {third_airport}"
      f"\n4.    {pkgtype()}     {fourth_airport}"
      f"\n5.    {pkgtype()}     {fifth_airport}")
Choice = int(input("Enter: "))