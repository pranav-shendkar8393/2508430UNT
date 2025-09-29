class student:
    def __init__(self, roll, name):
        self.roll = roll
        self.name = name
    
    def display(self):
        print(f"Roll no:{self.roll} Name:{self.name}")
    
    def setAge(self, age):
        self.age = age
    
    def setMarks(self, marks):
        self.marks = marks
    

student1 = student(21, "Krish")
student1.display()
student1.setAge(5)
student1.setMarks(85)

print(f"Marks:{student1.marks} age:{student1.age}")

