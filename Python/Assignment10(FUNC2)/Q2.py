def main():
    list1 = ["Alice", "Bob", "Charlie", "Dave", "Elfie", "Fishker"]
    print(find_longest_words(list1))
    
def find_longest_words(list1):
    max = len(list1[0])
    for i in list1:
        if len(i) > max:
            max = len(i)
    return max
    
main()