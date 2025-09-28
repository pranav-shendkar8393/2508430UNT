user_input = input("Enter a Sentence: ").split()

for word in user_input:
    print(word[0].upper(), end = "")
    print(word[1:-1].lower(), end = "")
    print(word[-1].upper(), end = " ")
print()
