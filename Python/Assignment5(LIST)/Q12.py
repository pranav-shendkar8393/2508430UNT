list1 = [i for i in range(0, 50, 7)]
print(f"Here is Random list1 {list1}")

print()
list1.append(int(input("Enter value to append data in list: ")))
print(f"Data in list1 {list1}")

print()
value, idx = input("Enter value <space> index:").split()
list1.insert(int(idx), int(value))
print(f"Data in list1 {list1}")

print()
value = int(input("Enter value to delete:"))
if value in list1:
    list1.remove(value)
else:
    print("Value not Found!")
print(f"Data in list1 {list1}")

print()
idx = int(input("Enter index to be deleted:"))
if idx < len(list1):
    list1.pop(idx)
else:
    print("Out Of Index!")
print(f"Data in list1 {list1}")


print()
print(f"Sorting Data in Ascending {list1}")
list1.sort()
print(f"Data in list1 {list1}")

print()
print(f"Sorting Data in Descending {list1}")
list1.sort(reverse = True)
print(f"Data in list1 {list1}")

print()
print(f"Reversing Data {list1}")
list1.reverse()
print(f"Data in list1 {list1}")

