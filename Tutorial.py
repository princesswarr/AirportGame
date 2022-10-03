##
import random
def new_turn():
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
            airport_pkg = [f"{pkgtype()}", f"{random_airport}"]
            return airport_pkg

        player_location = "Helsinki-Vantaa Airport"
        airport_pkg1 = function()
        airport_pkg2 = function()
        airport_pkg3 = function()
        airport_pkg4 = function()
        airport_pkg5 = function()
        co2_left = 10000
        score = 350
        print(f"You are in: {player_location}                 "
              f"CO2 left: {co2_left}                 "
              f"Score: {score} "
              f"\nChoose next location: "
              f"\n      Type        Airport                     Distance"
              f"\n1.    {airport_pkg1[0]}     {airport_pkg1[1]}"
              f"\n2.    {airport_pkg2[0]}     {airport_pkg1[1]}"
              f"\n3.    {airport_pkg3[0]}     {airport_pkg1[1]}"
              f"\n4.    {airport_pkg4[0]}     {airport_pkg1[1]}"
              f"\n5.    {airport_pkg5[0]}     {airport_pkg1[1]}")
        Choice = int(input("Enter: "))

new_turn()