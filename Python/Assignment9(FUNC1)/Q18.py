def largest(obj):
    max = obj[0]
    for i in obj:
        if max > i:
            continue
        else:
            max = i
    return max

list1 = [i for i in range(1, 50,7)]
print(type(list1))
print(list1)
print(largest(list1))

