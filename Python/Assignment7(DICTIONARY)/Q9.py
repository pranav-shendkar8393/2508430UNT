dict1 = {
    "Name":"Telephone Number",
    "Madhura Kale":"9685968911",
    "Ram Kulkarni":"9685967485",
    "Rama Londhe":"9682368919"
}

print(dict1)

dict1.update({"Madhura Kale":"9155510245"})
print(dict1)
dict1.update({"Ankita Deshpande":"9855532375"})
print(dict1)

print("Ram:", dict1["Ram Kulkarni"])
print("Ram:", dict1.setdefault("Ram", None))

print(dict1.keys())
print(dict1.values())

