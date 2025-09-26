user_input = input("Enter a Sentece: ").split()

for i in range((len(user_input) - 1), -1, -1):
    print(user_input[i], end = " ")
print()
