year = int(input("Enter Year: "))

isLeap = False
if ((year % 4) == 0 and (year % 100) != 0) or ((year % 400) == 0):
    isLeap = True
    print("Leap Year")
else:
    print("Not Leap Year")
