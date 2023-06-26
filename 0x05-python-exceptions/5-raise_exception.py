se_exception():
    x = "Hello, World!"
    if not isinstance(x, int):
        raise TypeError("Expected an integer, but received a string.")
