menu = """        ``` Dictionary CRUD ```
        1.Add data
        2.Update data
        3.Display Data with Key
        4.Find with key
        5.Delete Key Value
        6.Quit App"""

dict1 = {"m":"math", "p":"python","aj":"adv java"}

while(True):
    print(dict1)
    print(menu)
    user_input = int(input("Choose from menu:"))
    if user_input == 6:
        print("Bye :)")
        break
    elif user_input == 1 or user_input == 2:
        key, *value = input("Enter Key <space> Values:").split()
        dict1.update({key:value})
    elif user_input == 3:
        print(dict1)
    elif user_input == 4:
        key = input("Enter Key to find:")
        if key in dict1:
            print(f"{key}:{dict1[key]}")
        else:
            print("Not Found!")
    elif user_input == 5:
        key = input("Enter Key to Delete:")
        if key in dict1:
            print(f"Deleted {key}:{dict1.pop(key)}")
        else:
            print("Not Found!")
    else:
        print("Choose Again!")
    