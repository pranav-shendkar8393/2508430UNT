def sumdigit(string):
    list1 = []
    for char in string:
        if char == " ":
            list1.append("-")
        else:
            list1.append(char)
            
    return "".join(list1)

print(sumdigit(input("Enter string: ")))
