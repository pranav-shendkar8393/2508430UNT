def main():
    list1 = [i for i in range(10, 400, 11)]
    print(list1)
    try:
        user_index = int(input("Enter index You want: "))
    except ValueError as e:
        print("Please Enter a Intger Value!")
    else:
        print_list_element(list1, user_index)

def print_list_element(l, i):
    try:
        print(f"element at index {i} is {l[i]}")
    except IndexError as e:
        print("Index is out of list Index")
    



if __name__ == "__main__":
    main()