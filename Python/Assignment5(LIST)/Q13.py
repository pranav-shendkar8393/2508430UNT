list1 = [i for i in range(-100, 101, 5)]
print(list1)
user_input = int(input("Enter a Value from Index: "))
if user_input in list1:
    print(f"Index of {user_input} is {list1.index(user_input)}")
else:
    print("Value Not Found")