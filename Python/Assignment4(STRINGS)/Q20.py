user_input = input("Enter a Sentence: ").split()

for word in user_input[::-1]:
    print(word, end = " ")
print()
