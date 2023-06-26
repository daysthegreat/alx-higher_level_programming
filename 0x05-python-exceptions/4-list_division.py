#!/usr/bin/python3
def list_division(my_list_1, my_list_2, list_length):
    result = []

    for i in range(list_length):
        try:
            # Get the current elements from both lists
            num1 = my_list_1[i]
            num2 = my_list_2[i]

            # Check if the elements are numeric
            if not isinstance(num1, (int, float)) or not isinstance(num2, (int, float)):
                print("wrong type")
                result.append(0)
                continue

            # Perform the division
            try:
                division_result = num1 / num2
            except ZeroDivisionError:
                print("division by 0")
                division_result = 0

            result.append(division_result)

        except IndexError:
            print("out of range")
            result.append(0)

    return result
