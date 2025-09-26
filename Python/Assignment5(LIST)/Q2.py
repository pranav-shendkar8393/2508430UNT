list1 = [-100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 
         0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 
         50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100]
negative_sum = 0
odd_sum = 0
even_sum = 0
for i in list1:
    if i < 0:
        negative_sum += abs(i)
    elif ((i % 2) == 0):
        even_sum += i
    else:
        odd_sum += i

print(list1)
print(f"Negative number Sum {negative_sum}")
print(f"Even number Sum {even_sum}")
print(f"Odd number Sum {odd_sum}")