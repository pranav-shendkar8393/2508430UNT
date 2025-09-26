user_input = input("Enter a String: ").lower()
print("Palidrome" if (user_input[::-1] == user_input) else "Not Palidrome")