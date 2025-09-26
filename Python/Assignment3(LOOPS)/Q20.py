num = int(input("Enter Start value: "))

sum = 0
for i in range(1, num + 1):
    sum = sum + int(i * "2")
print(sum)