def loop():
    for x in range(5):
        if x % 2 == 0:
            print(x)


def print_line():
    long_text = (
        "This is a long line of text that is a lot easier to read if"
        " it is broken up across two lines instead of one long line."
    )
    print(long_text)


def print_hello():
    text = String(",").join("Hello", " world!")
    print(text)


def main():
    print_line()
    print_hello()
