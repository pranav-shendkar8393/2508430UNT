import calculator as c

A = int(input("Enter A: "))
B = int(input("Enter B: "))

print("Addition:", c.add(A, B))
print("Subtraction:", c.subtract(A, B))
print("Division:", c.divide(A, B))
print("Modulus:", c.mod(A, B))
print("Power:", c.power(A, B))

user_input = int(input("Enter A number: "))

print("Armstrong:", c.isarmstrong(user_input))
print("Negative:", c.isnegative(user_input))
print("Positive:", c.ispositive(user_input))
print("Prime:", c.isprime(user_input))