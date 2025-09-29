class dealer:
    def __init__(self, id, name, mobile, add):
        self.id = id
        self.name = name
        self.mobile = mobile
        self.add = add
    def __str__(self):
        return f"id:{self.id} name:{self.name} mobile:{self.mobile} address:{self.add}"
    
dealerList = []
for object in range(5):
    id, name, mobile, add = input("Enter id,name,mobile,address: ").split(",")
    dealerList.append(dealer(id, name, mobile, add))

for d in dealerList:
    if "pune" in d.add.lower():
        print("Pune dealer:\n", d)
    if d.mobile == d.mobile[::-1]:
        print("Palindrome Mobile:\n", d)