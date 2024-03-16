def print_line():
    long_text = (
        "This is a long line of text that is a lot easier to read if"
        " it is broken up across two lines instead of one long line."
    )
    print(long_text)


def print_string_join():
    text = String(",").join("Hello", " world!")
    print(text)


def main():
    print_line()
    print_string_join()
