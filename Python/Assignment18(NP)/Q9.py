import numpy as np

arr1 = np.random.randint(13, 41, 12)
print("Random Array:", arr1)
print()
arr1.sort()
print("Sorted Array:", arr1)
print()
arr1.sort()
print("Reversed Array:", arr1[::-1])