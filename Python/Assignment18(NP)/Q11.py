import numpy as np

arr1 = np.array([[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]])
arr2 = np.array([[9, 8, 7],
                [6, 5, 4],
                [3, 2, 1]])
print(arr1)
print()
print(arr2)
print("Addition      :\n", arr1 + arr2)
print()
print("Subtraction   :\n", arr1 - arr2)

print()
print("Multiplication:\n", arr1 * arr2)

print()
print("Division:\n", arr1 // arr2)

print()
print("Matrix Multiplication:\n", arr1.dot(arr2))

print()
print("Max from 1st:", np.max(arr1))

print()
print("Min from 1st:", np.min(arr1))

print()
print("Sum of all from 1st:", np.sum(arr1))

print()
print("Transpose of 1st:\n", arr1.T)