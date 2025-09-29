def main():
    print(isprime(11))
    print(isarmstrong(153))
    print(ispositive(13))
    print(isnegative(-13))

def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def divide(a, b):
    return a / b

def mod(a, b):
    return a % b

def power(a, b):
    return a**b

def ispositive(num):
    return num >= 0 

def isnegative(num):
    return num < 0 

def isprime(num):
    for i in range(2, num//2):
        if num % i == 0:
            return False
    return True 

def isarmstrong(num):
    sum = 0
    for char in str(num):
        sum = sum + int(char)**len(str(num))
    return sum == num


if __name__ == "__main__":
    main()