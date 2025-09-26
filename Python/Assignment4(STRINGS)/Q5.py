user_input = input("Enter a String: ")
vowels = "aeiou"
vowel_count = 0
for char in user_input:
    if char.lower() in vowels:
        vowel_count += 1
print(f"Vowels in {user_input} are {vowel_count}")