list1 = [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 
         50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100,
         -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 
         0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 
         50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100
         ]

print("List Before:", list1)

no_duplicate_list1 = []
for item in list1:
    if item not in no_duplicate_list1:
        no_duplicate_list1.append(item)

print("List Without Duplicate:", no_duplicate_list1)