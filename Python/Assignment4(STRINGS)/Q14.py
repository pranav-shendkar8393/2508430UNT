user_input = input("Enter a String: ")
vowels = "aeiou"
consonants_count = 0
for char in user_input:
    if char.lower() not in vowels:
        consonants_count += 1
print(f"Consonats in {user_input} are {consonants_count}")