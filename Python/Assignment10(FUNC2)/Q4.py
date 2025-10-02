def main():
    u_input = input("Enter a Sentence: ")
    print(correct(u_input))
    
def correct(string):
    list2 = []
    for word in string.split():
        if "." in word:
            first, second = word.split(".")
            word = ". ".join([first, second])
        list2.append(word)
    return " ".join(list2)
    
main()