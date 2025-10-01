from numpy import arange

arr1 = arange(1, 41).reshape(4, 10)
print(arr1)

print(arr1[arr1 % 2 != 0])