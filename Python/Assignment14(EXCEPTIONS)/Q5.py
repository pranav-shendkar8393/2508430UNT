class InvalidAgeError(Exception):
    pass

user_input = input("Enter Age: ")
try:
    if int(user_input) < 18:
        raise InvalidAgeError("Not Eligible For Voting!")
except InvalidAgeError:
    print("You are Not Eligible for Voting!")
except ValueError:
    print("Enter a Integer Value!")
except Exception as e:
    print(e)
else:
    print("You're Eligible for Voting!")