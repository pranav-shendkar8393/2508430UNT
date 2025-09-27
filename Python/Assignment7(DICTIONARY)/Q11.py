dict1 = {"Arham":"9988665522", 
         "Monika":"7788554411", 
         "Lisa":"2233665544", 
         "Vinod":"1144556699", 
         "Jenny":"3322554411"
         }
print(dict1)
name, number = input("Enter name <space> PhoneNumber: ").split()
dict1.update({name:number})
print(dict1)

key = input("Enter a name to be deleted: ")
if key in dict1:
    print(dict1.pop(key))
else:
    print("Not Found!")
print(dict1)

name, number = input("Enter name <space> PhoneNumber: ").split()
dict1.update({name:number})
print(dict1)

key = input("Enter a name you want to find:")
if key in dict1:
    print(key, "-", dict1[key])
else:
    print("Not Found!")
print()

dict1 = dict(sorted(dict1.items()))
print("Sorted: ", dict1)