from pickle import dump, load

employee = [(10, "Alice", 500), (20, "Bob", 600), (30, "Charlie", 800)]
print(employee)

with open("emp.pkl", "wb") as file:
    dump(employee, file)
    print("Dumped employee in emp.pkl")

with open("emp.pkl", "rb") as file:
    print("Reading employee from emp.pkl ...")
    print(load(file))