count = 1
evens = []
odds = []
primes = []
perfects = []
while (count <= 20):
    evens.append(count) if ((count % 2 == 0)) else odds.append(count)
    i = 2
    sum = 0
    while (i < count):
        if((count % i) == 0):
            sum = sum + i
        i += 1
    else:
        if (sum == count):
            perfects.append(count)
        primes.append(count)

    count += 1
print("First 10 Even Numbers: ", evens)
print("First 10 Odd Numbers: ", odds)
print("First 5 Prime Numbers: ", primes[:5])
print("First perfect Numbers: ", perfects)