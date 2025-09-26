user_input = input("Enter a String: ")
if len(user_input) > 2:
    print("String:", (user_input[0:2] + user_input[-2:]))
else:
    print(user_input)