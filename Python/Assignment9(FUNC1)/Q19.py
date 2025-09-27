def secondlargest(obj):
    max = obj[0]
    second_max = obj[0]
    for i in obj:
        if i > max:
            second_max = max
            max = i
        elif i > second_max:
            second_max = i
    return max, second_max


list1 = [i for i in range(1, 50,7)]
print(type(list1))
print(list1)
print(secondlargest(list1))

