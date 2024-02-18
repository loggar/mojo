def greet(name):
    return "Hello, " + name + "!"


fn greet2(name: String) -> String:
    return "Hello, " + name + "!"


def main():
    print(greet("World!"))
    print(greet2("World!!"))


"""
$ mojo ./src/functions/fn.01.def-and-fn.mojo
'Hello, World!!'
Hello, World!!!
"""
