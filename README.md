# AirportGame
## Preliminary Project – Specification 
Flight Game 
 
Software 1: Procedural Programming 
Group TXL22S1 – B 
 
Students: Brandon Bósquez Gonzal, Chad Clusker, Milan Thapa Magar, Mahinur 

## Introduction 

The project of a flight simulator game as a mid-term project was assigned. In this document the functionalities and capabilities of the project are described. A detailed explanation of the user experience with the game can found, as well as possible paths for gameplay and user experience. 
This is composed of 4 chapters: 
•	Introduction 
•	Vision 
•	Functional requirements 
•	Quality requirements 

## Vision

You are a postal worker collecting packages by plane. The setting is Finland, and the packages are collected at the different airports of the country. You have a limited resource called CO2; you will receive a budget that determines how much CO2 you can spend. The budget is generated depending on what difficulty level you choose. There are three package type, each having a different value. Your goal is to collect the highest added value of packages before you run out of CO2 to spend.  
Strategy comes into place when you have to evaluate the highest return value option, taking into account the points you will receive against the amount of CO2 you will consume. An element of risk is also added, since the higher the value of the package is, the higher the possibility of bad weather at the airport that stores it. Bad weather causes the points of the package to be reduced. 

## Functional Requirements

As a user the path to be followed is very linear and straightforward, where the variety of each new game is found in the randomness of the options to travel to and the package types that these contain, as well as in the weather conditions.

A general path that could be followed would be:
1.	Player starts the game, they are greeted
2.	The player is asked if they want to play the tutorial, if they do it will play it and ask again until they choose to skip it. If they skip it they are sent into gameplay
3.	Player chooses difficulty level; CO2 budget is generated accordingly
4.	Player is moved to a location, and they are given 5 distinct options to move to
5.	New location is chosen
6.	Does the player have enough CO2 to reach the location?

    a.	Yes: taking weather conditions into account, score is adjusted

       steps 4-6 are repeated

    b.	No: Game over
    
## Game Path Diagram

![Proyecto_diagrama2](https://user-images.githubusercontent.com/111736314/195540758-d2629372-8e15-42e9-9bba-4d0df40aef62.png)

## Quality Requirements

The quality of the program was considered a central point during the development of the project. The program is assured to run smoothly giving the user a good experience during the running of the game.
Program is set up in a way where the processing times are nearly instantaneous, so the user receives good feedback.  At the same time important messages for the player are displayed in a user-friendly way. Loading screens are used for aesthetic purposes, giving a more classic game experience. Clearing screen is done to maintain the user interface pleasantly organized for the player.
The tutorial is explained in detail, so the concept, goal and objectives of the game are not subject to doubt or interpretation. This is to make it more accessible for younger or unexperienced users.

