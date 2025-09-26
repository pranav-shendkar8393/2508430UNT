user_string, user_char = input("Enter a String <space> Special Char:").split()
if user_string.lower().startswith(user_char.lower()):
    print(f"True:{user_string} starts with {user_char}")
else:
    print(f"False:{user_string} does not starts with {user_char}")
