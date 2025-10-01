from pickle import load, dump
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    def __str__(self):
        return f"Person name:{self.name} and {self.age} years old"
    

boy = Person("Alice", 29)
print(boy)

print()
with open("person.pkl", "wb") as file:
    dump(boy, file)
    print("Dumped boy to person.pkl")
print()

with open("person.pkl", "rb") as file:
    boy2 = load(file)
    print("Reading boy from person.pkl ...")
    print(boy2)

