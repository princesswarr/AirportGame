##
import random, os, time
os.system('cls')
print("\n\nLoading Tutorial! \n")
time.sleep(0.5)
os.system('cls')
print("\n\nLoading Tutorial! .\n")
time.sleep(0.5)
os.system('cls')
print("\n\nLoading Tutorial! ..\n")
time.sleep(0.5)
os.system('cls')
print("\n\nLoading Tutorial! ...\n")
time.sleep(0.5)
os.system('cls')
print("\n\nLoading Tutorial! \n")
time.sleep(0.5)
os.system('cls')
print("\n\nLoading Tutorial! .\n")

os.system('cls')

print("\n\nTutorial\n")
time.sleep(1)
print("In this game you play as a postal pilot collecting packages from different airports.\n"
      "You start from a random airport and get given a choice of five airports to travel to.\n"
      "\n")
tutorialinput = input("Press enter to continue: ")
if tutorialinput == "":
    time.sleep(0.2)
    os.system('cls')

print("\n\nTutorial\n")
print("The objective of the game is to collect as many packages you can while consuming as "
      "little CO2 as possible.\n"
      "The more packages you collect the higher your score will be.\n"
      "Each choice of airport has a randomly chosen package you can collect.\n"
      "There are three different package types :\n"
      "Bronze = 100 points\n"
      "Silver = 200 points\n"
      "Gold = 300 points\n"
      "\n"
      "")
tutorialinput = input("Press enter to continue: ")
if tutorialinput == "":
    time.sleep(0.2)
    os.system('cls')
print("\n\nTutorial\n")
print("CO2 is the limited resource in the game.\n"
      "The further away an airport is from your current location the more CO2 your plane will consume.\n"
      "\n"
      "")
tutorialinput = input("Press enter to continue: ")
if tutorialinput == "":
    time.sleep(0.2)
    os.system('cls')
print("\n\nTutorial\n")
print("To make the experience more varied you will encounter weather effects during your travels.\n"
      "The more valuable the package that you collect is the more likely you are to encounter a "
      "negative weather effect.\n"
      "The worse the weather effect is the less points you gain from the package.\n"
      "")
tutorialinput = input("Press enter to continue: ")
if tutorialinput == "":
    time.sleep(0.2)
    os.system('cls')
print("\n\nTutorial\n")
print("Finally here is a quick look at how the UI (User Interface) looks !\n")
tutorialinput = input("Press enter to continue: ")
if tutorialinput == "":
    time.sleep(0.2)
    os.system('cls')
print("\n\nTutorial\n")
print(f"You are in: Helsinki-Vantaa Airport                 "
              f"CO2 left: 7000                 "
              f"Score: 550 \n"
              f"\nChoose next location: "
              f"\n      Type        Airport                     Distance (CO2)"
              f"\n1.    Gold        Rovaniemi Airport           2000"
              f"\n2.    Silver      Kittilä Airport             800"
              f"\n3.    Gold        Kuusamo Airport             1400"
              f"\n4.    Bronze      Maarianhamina Airport       500"
              f"\n5.    Bronze      Vaasa Airport               900\n\n"
      f"Enter: \n\n"
      f"Here you input a number corresponding to the airport you wish to travel to.\n")
tutorialinput = input("Press enter to continue: ")
if tutorialinput == "":
    time.sleep(0.2)
