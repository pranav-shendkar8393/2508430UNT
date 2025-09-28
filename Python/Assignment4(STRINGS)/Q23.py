user_input = input("Enter alphaNumeric String: ")
isalphabets = False
isNumbers = False
for char in user_input:
    if char.isalpha():
        isalphabets = True
    elif char.isdigit():
        isNumbers = True
print(isalphabets and isNumbers)