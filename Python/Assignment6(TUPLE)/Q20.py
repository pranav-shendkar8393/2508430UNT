test_list = [(4, 5, 9), (-3, 2, 3), (-3, 5, 6), (4, -6)]
print("List:", test_list)
positive_list = []
for item in test_list:
    for i in item:
        if i < 0:
            break
    else:
        positive_list.append(item)
print(positive_list)