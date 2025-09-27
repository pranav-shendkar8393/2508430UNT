def sumdigit(string):
    sum = 0
    for char in string:
        if char.isdigit():
            sum = sum + int(char)
    return sum

print("Sum of digit:", sumdigit(input("Enter AlphaNumeric Value: ")))

