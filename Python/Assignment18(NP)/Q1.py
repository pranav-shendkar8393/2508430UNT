import numpy as np

arr1 = np.ones(10)
arr2 = np.ones((10, 2))
arr3 = np.ones((10, 5, 2))

print("1D:", arr1)
print("Dimension:", arr1.ndim)
print("Shape:   :", arr1.shape)
print("Data Type:", arr1.dtype)
print("Size     :", arr1.size)
print()
print("2D:", arr2)

print("Dimension:", arr2.ndim)
print("Shape:   :", arr2.shape)
print("Data Type:", arr2.dtype)
print("Size     :", arr2.size)
print()
print("3D:", arr3)

print("Dimension:", arr3.ndim)
print("Shape:   :", arr3.shape)
print("Data Type:", arr3.dtype)
print("Size     :", arr3.size)