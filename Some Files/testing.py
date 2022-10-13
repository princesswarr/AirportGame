import os,random
x = []
y= -1
for i in range(117):
    x.append(y+1)
    y= y+1
print(x)
x2 = []
z1 = random.randint(0,116)
z2 = random.randint(0,116)
if z1 == z2:
    z2 = random.randint(0,116)
z3 = random.randint(0,116)
while z1 == z3 and z2 == z3:
    z3 = random.randint(0,116)
z4 = random.randint(0,116)
while z1 == z4 and z2 == z4 and z3 == z4:
    z4 = random.randint(0, 116)
z5 = random.randint(0,116)
while z1 == z5 and z2 == z5 and z3 == z5 and z4 == z5:
    z5 = random.randint(0, 116)
x2.append(x[z1])
x2.append(x[z2])
x2.append(x[z3])
x2.append(x[z4])
x2.append(x[z5])
print(x2)