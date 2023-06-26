#!/usr/bin/python3
def safe_print_list(my_list=[], x=0):
    try:
        for i in range(x):
            print(my_list[i], end=" ")
    except IndexError:
        pass
    finally:
        print()  # Print a new line after the elements are printed
        return min(x, len(my_list))
