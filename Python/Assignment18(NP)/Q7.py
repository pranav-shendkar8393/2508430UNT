from numpy import arange, append

arr1 = arange(0, 40, 2)
arr2 = arange(1, 41, 2)

print("A1:", arr1)
print("A2:", arr2)
arr1 = append(arr1, arr2)
print("Appending 2nd to 1st:\n", arr1)