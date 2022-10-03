import time, os, importlib
#
version_of_the_game = "Airport Game v.0"

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

print("The Game")