name, age, sal = input("Enter Name <spcae> Age <space> sal:").split()
string_old = "Hello, %s you are %s years old and getting salary %s"%(name, age, sal)
string_default = "Hello, {} you are {} years old and getting salary {}".format(name, age, sal)
string_positional = "Hello, {1} you are {0} years old and getting salary {2}".format(age, name, sal)
string_key = "Hello, {n} you are {a} years old and getting salary {s}".format(a = age, n = name, s = sal)


print("using %:", string_old)
print("using Default:", string_default)
print("using positional:", string_positional)
print("using keyword:", string_key)