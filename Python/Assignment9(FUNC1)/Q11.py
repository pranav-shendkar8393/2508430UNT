numbers = list(map(int, input("Enter 10 number: ").split()))
print(list(map(lambda n:n+15, numbers)))

mult = lambda m, n: m*n
one, two = input("Enter two number: ").split()
print(mult(int(one), int(two)))