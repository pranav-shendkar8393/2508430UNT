user_input, user_index = input("Enter a String <space> Index: ").split()

for i in range(len(user_input)):
    if i == int(user_index):
        continue
    else:
        print(user_input[i], end = "")
print()