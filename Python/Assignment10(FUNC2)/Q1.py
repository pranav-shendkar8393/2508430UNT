def main():
    list1 = [i for i in range(1, 11, 2)]
    list2 = [i for i in range(1, 11, 3)]
    print(list1)
    print(list2)
    print(overlapping(list1, list2))

def overlapping(list1, list2):
    for i in list1:
        if i in list2:
            return True
    return False
    
main()