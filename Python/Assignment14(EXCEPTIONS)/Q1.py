x, y = input("Enter two Numbers: ").split()
try:
    print(f"Division of{x}/{y} is", int(x) / int(y))
except ValueError as e:
    print("Please enter Integers x y")
except ZeroDivisionError as e:
    print(f"Cannot divide {x} by zero {y}")