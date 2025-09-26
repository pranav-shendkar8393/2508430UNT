user_input = input("Enter a Sentece: ").split()

for item in user_input:
    if "a" in item.lower():
        print(item)
