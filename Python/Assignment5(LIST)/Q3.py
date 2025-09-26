list1 = [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 
         50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100]
odd_max = 0
even_max = 0
for i in list1:
    if ((i % 2) == 0):
        if i > even_max:
            even_max = i
    else:
        if i > odd_max:
            odd_max = i

print(list1)
print(f"Even max number {even_max}")
print(f"Odd max number {odd_max}")