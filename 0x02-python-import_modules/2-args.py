#!/usr/bin/python3
import sys

argv = sys.argv[1:]
num_arguments = len(argv)

if num_arguments == 0:
    print("No arguments were passed.")
else:
    if num_arguments == 1:
        argument_str = "argument"
    else:
        argument_str = "arguments"

    print(f"Number of {argument_str}: {num_arguments}.")

    for i, arg in enumerate(argv):
        print(f"Argument {i+1}: {arg}")
