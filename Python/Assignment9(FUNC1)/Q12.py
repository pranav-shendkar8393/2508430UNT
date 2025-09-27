numbers = list(map(int, input("Enter 10 number: ").split()))
print(list(map(lambda n:(n**2, n**3), numbers)))

