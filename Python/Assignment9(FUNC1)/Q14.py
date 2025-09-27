def titled(strings):
    list1 = []
    for word in strings.split():
        for j in range(len(word)):
            if j == 0:
                list1.append(word[j].upper())
            else:
                list1.append(word[j].lower())
        list1.append(" ")
    return "".join(list1)


print(titled(input("Enter a Sentence: ")))
            
