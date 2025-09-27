def evens():
    even_nums = []
    for i in range(4,31, 2):
        even_nums.append(i)
    return even_nums

list1 = [i for i in evens()]
print(list1)