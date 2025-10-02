class Person:
    def __init__(self, pid, pname, email, mobile):
        self.pid = pid
        self.pname = pname
        self.email = email
        self.mobile = mobile

    def display(self):
        print(self.pid, self.pname, self.email, self.mobile)

class Employee(Person):
    def __init__(self, pid, pname, email, mobile, dept, desg, sal):
        super().__init__(pid, pname, email, mobile)
        self.dept = dept
        self.desg = desg
        self.sal = sal

    def display(self):
        print(self.pid, self.pname, self.email, self.mobile, self.dept, self.desg, self.sal)
    
    def calculateNetSal(self):
        netsal = 1.10 * (1.15 * (self.sal * 0.95))
        print(netsal)

class Member(Person):
    def __init__(self, pid, pname, email, mobile, Mtype, amtPaid):
        super().__init__(pid, pname, email, mobile)
        self.Mtype = Mtype
        self.amtPaid = amtPaid

    def display(self):
        print(self.pid, self.pname, self.email, self.mobile, self.Mtype, self.amtPaid)

p1 = Person(21, "Krish", "k@gov.in", "9988556622")
e1 = Employee(21, "Krish", "k@gov.in", "9988556622", "ADV", "MGR", 1000)
m1 = Member(21, "Krish", "k@gov.in", "9988556622", "MGR", 1100)

p1.display()
e1.display()
e1.calculateNetSal()
m1.display()