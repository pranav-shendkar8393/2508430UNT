cost  = int(input("Enter Price of bike: "))

tax = 0
if (0 <= cost <= 50000):
    tax = cost * 1.05
elif (50000 < cost <= 100000):
    tax = ((cost - 50000) * 1.10) + (50000 * 1.05)
else:
    tax = ((cost - 100000) * 1.15) + (50000 * 1.05) + (50000 * 1.10)

print("Tax: ", tax)
