start = int(input("Enter Start Value: "))
stop = int(input("Enter End Value: "))
start = (start + 1) if (start % 2 == 0) else (start)
for i in range(start, stop, 2):
    print(i)