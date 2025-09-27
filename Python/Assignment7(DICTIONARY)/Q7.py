list1 = [i for i in range(1, 51, 5)]
print(list1)
list2 = [j**2 for j in range(1, 51, 5)]
print(list2)

list3 = [k**2 for k in range(1, 61, 5)]
print(list3)

print(dict(zip(list1, list2, strict=True)))
print(dict(zip(list3, list1)))

