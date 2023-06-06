#!/usr/bin/python3
def uppercase(str):
    for char in str:
        upprcase_char = chr(ord(char) - 32) if 97 <= ord(char) <= 122 else char
        print("{}".format(upprcase_char), end="")
    print()
