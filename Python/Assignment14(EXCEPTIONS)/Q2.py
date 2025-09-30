while True:
    try:
        name, surname, age, height, weight = input("Enter name,surname,age,height,weight : ").split(",")
        age, height, weight = int(age), float(height), float(weight)
    except ValueError as e:
        print("Please enter age, height, weight as Integer!")
    else:
        print(f"Hello, {name.title()} {surname.title()}")
        print(f"You are {age} years old {height} cm tall and weighs {weight}Kg")
        break