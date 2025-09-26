tuple1 = (1, 2, 5, 6, 3, 8, 5, 2, 1, 4, 6)
print(tuple1)

user_input = int(input("Enter element to find index in tuple: "))

print(f"Element {user_input} at index: {tuple1.index(user_input) if user_input in tuple1 else None}")