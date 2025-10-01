from pickle import dumps, loads

dict1 = {i:i**2 for i in range(10, 200, 12)}
print(dict1)
print()

bs = dumps(dict1)
print("Dictionary to ByteStream:")
print(bs)
print()

dict2 = loads(bs)
print("ByteStream to Dictionary:")
print(dict2)
