user_input = input("Enter a String: ")
lowers = 0
CAPS = 0
for char in user_input:
    if char.isupper():
        CAPS += 1
    elif char.islower():
        lowers += 1
    else:
        pass

print(f"UpperCase:{CAPS} and lowercase: {lowers}")