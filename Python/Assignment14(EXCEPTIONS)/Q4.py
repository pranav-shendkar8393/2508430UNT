def main():
    dict2 = {"List1":[2, 7, 5, 4, 4],
             "List2":[9, 9, 7, 4, 7],
             "List3":[4, 7, 9, 3, 4],
             "List4":[2, 3, 7, 4, 6],
             "List5":[1, 2, 7, 4, 4]
    }
    print(dict2)
    try:
        list_name, item = input("Enter list name <space> item: ").split()
    except Exception:
        print("Please enter 2 Values!")
    else:
        add_to_list_in_dict(dict2, list_name, item)
        print(dict2)

def add_to_list_in_dict(dict1, l, item):
    try:
        l1 = dict1[l]        
    except Exception as e:
        print(f"The {l} is not in {dict1}")
        print(e)
        dict1[l] = []
        print(f"Created {l}")
    else:
        print(f"{l} already exists {len(l1)}")
    finally:
        dict1[l].append(item)

        






if __name__ == "__main__":
    main()