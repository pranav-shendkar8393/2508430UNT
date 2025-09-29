def main():
    pass

def displayList(l):
    print(l)

def reverseList(l):
    print(l[::-1])

def displayAlternate(l):
    print(l[::2])

def displayUpper(l):
    list2 = [item.upper() for item in l]
    print(list2)

def displayLower(l):
    list2 = [item.lower() for item in l]
    print(list2)

def displayUnique(l):
    dict1 = {item:l.count(item) for item in l}
    list2 = [key for key, value in dict1.items() if value == 1]
    print(list2)

def displayDuplicate(l):
    dict1 = {item:l.count(item) for item in l}
    list2 = [key for key, value in dict1.items() if value > 1]
    print(list2)










if __name__ == "__main__":
    main()