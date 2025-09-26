user_input = input("Enter a Number: ")
sum = 0
for char in user_input:
    sum = sum + int(char)
print(f"Sum of {user_input} is {sum}")