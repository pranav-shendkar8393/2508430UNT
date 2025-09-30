def main():
    pass

def displayList(l):
    print(l)

def reverseList(l):
    print(l[::-1])

def displayAlternate(l):
    print(l[::2])

def displayUpper(l):
    print([item.upper() for item in l])

def displayLower(l):
    print([item.lower() for item in l])

def displayUnique(l):
    print([item for item in l if l.count(item) == 1])

def displayDuplicate(l):
    print([item for item in l if l.count(item) > 1])

if __name__ == "__main__":
    main()