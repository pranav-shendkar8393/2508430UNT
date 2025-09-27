set1 = {1, 2, 3, 4, 66, 868, 7, 777, 75, 55, 9594, 444}
print(set1)
user_input = int(input("Enter a value to be removed: "))
if user_input in set1:
    set1.remove(user_input)
else:
    print("Not Found!")

print(set1)