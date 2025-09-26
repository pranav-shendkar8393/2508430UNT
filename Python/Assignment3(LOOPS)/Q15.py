num = int(input("Enter a no: "))

# *
# **
# ***
# ****
# *****
print("``` (A) ```")
for i in range(1, num + 1):
    for j in range(i):
        print("*", end = "")
    print()
print()

# 1
# 22
# 333
# 4444
# 55555
print("``` (B) ```")
for i in range(1, num + 1):
    for j in range(i):
        print(i, end = "")
    print()
print()


# 1
# 12
# 123
# 1234
# 12345
print("``` (C) ```")
for i in range(1, num + 1):
    for j in range(1, i + 1):
        print(j, end = "")
    print()
print()

#      *
#     **
#    ***
#   ****
#  *****
print("``` (D) ```")
for i in range(num, 0, -1):
    print((i * " "), end = "")
    for j in range((num + 1) - i):
        print(("*"), end = "")
    print()
print()

#      *
#     * *
#    * * *
#   * * * *
#  * * * * *
print("``` (E) ```")
for i in range(num, 0, -1):
    print((i * " "), end = "")
    for j in range((num + 1) - i):
        print(("* "), end = "")
    print()


print("``` (F) ```")
count = 1
for i in range(1, num):
    for j in range(i):
        print(count, end = "")
        count += 1
    print()
