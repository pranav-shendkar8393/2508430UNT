def deleteChar(string, char):
    if char not in string:
        return None
    
    list1 = []
    for c in string:
        if c == char:
            continue
        else:
            list1.append(c)
    return "".join(list1)
    
print(deleteChar("Hello, World", "o"))

