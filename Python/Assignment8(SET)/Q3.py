set1 = set()
print(set1)
user_input = input("Enter sequence number separated by space: ").split()
for item in user_input:
    set1.add(int(item))
print(set1)