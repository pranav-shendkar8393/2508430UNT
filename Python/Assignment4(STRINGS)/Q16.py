user_input = input("Enter a String: ")
alphas = 0
for char in user_input:
    if char.isalpha():
        alphas += 1
print(f"Total Aphabets {alphas}")