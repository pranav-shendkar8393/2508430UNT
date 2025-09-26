user_input = input("Enter a AlphaNumberic: ")
sum = 0
for char in user_input:
    if char.isdigit():
        sum += int(char)
print("Sum of Digits from String is", sum)