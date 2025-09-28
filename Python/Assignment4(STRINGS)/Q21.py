user_input = input("Enter a Sentence: ").split()

for word in user_input:
    if len(word) % 2 == 0:
        print(word, end = " ")
print()
