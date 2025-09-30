def main():
    list1 = input("Enter Items Separated by <space>: ").split()
    print(list1)
    try:
        position = int(input("Enter Position to look: "))
    except:
        print("Enter Valid Integer!")
    value = input("Enter Value to look: ")
    SearchByPosition(list1, position, value)

def SearchByPosition(list1, pos, value):
    try:
        print(f"At position {pos} is {list1[pos]}")
        if value in list1:
            print(f"{value} is at index {list1.index(value)}")
        else:
            raise Exception(f"{value} is Not in List")
    except IndexError as e:
        print("Position is Out of Index of list!")
    except Exception as e:
        print(e)







if __name__ == "__main__":
    main()