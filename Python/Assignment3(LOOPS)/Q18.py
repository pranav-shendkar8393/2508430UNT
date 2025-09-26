one = int(input("Enter Start Number: "))
two = int(input("Enter End Number: "))
for i in range(one, two + 1):
    for j in range(2, i):
        if ((i % j) == 0):
            # print(f"{i} Not Prime")
            break
    else:
        print(f"{i} Prime Number")