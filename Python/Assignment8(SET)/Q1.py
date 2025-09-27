#if element exist in set 

set1 = {1, 2, 3, 4, 5, 6, 100, 11, 55}
print(type(set1), set1)
element = int(input("Enter element to find in set: "))
if element in set1:
    print("Found")
else:
    print("Not Found")