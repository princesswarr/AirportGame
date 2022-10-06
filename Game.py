import time, os, importlib, random
#
os.system('cls')
version_of_the_game = "Airport Game v.0.2"

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
#Game
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