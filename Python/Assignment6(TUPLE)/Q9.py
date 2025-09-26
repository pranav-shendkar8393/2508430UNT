tuple1 = (1, 2, 5, 6, 3, 8, 5, 2, 1, 4, 6)
print(tuple1)

user_input = int(input("Enter number to find occerence of that: "))

print(f"Occerence of {user_input} are {tuple1.count(user_input) if user_input in tuple1 else None}")