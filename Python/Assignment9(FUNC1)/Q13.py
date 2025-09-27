def fact(num):
    if int(num) <= 0:
        return 0
    fact = 1
    for i in range(1, (num + 1)):
        fact = fact * i
    return fact

def main():
    for i in range(1, 10):
        print(i, fact(i))

main()
    
