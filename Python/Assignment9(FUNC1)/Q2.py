def func1(name, *info):
    print("Hello,", name, end=" ")
    for i in info:
        print(i, end=" ")
    print()
func1("Alice", "Ninty", "SWE")