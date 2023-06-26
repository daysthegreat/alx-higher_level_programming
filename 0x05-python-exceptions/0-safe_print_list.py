#!/usr/bin/python3

def safe_print_list(my_list=[], x=0):
    try:
        count = 0
        for element in my_list:
            if count >= x:
                break
            print(element, end=' ')
            count += 1
        print()
    except TypeError:
        print("Error: Invalid list element encountered.")
    finally:
        return count
