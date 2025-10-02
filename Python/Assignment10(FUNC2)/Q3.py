def main():
    list1 = ["Alice", "Bob", "Charlie", "Dave", "Elfie", "Fishker"]
    print(filter_long_words(list1, 4))
    
def filter_long_words(list1, size):
    list2 = []
    for i in list1:
        if len(i) > size:
            list2.append(i)
    return list2
    
main()