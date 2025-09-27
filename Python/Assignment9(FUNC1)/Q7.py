def unique(alist):
    return list(set(alist))

list1 = [1, 2, 55, 66, 88, 88, 66, 55, 55, 44, 
         44, 55, 66, 77, 88, 22, 2, 1]

print(list1)
list1 = unique(list1)
print(list1)