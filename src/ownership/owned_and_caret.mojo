fn take_text(owned text: String):
    text += "!"
    print(text)


fn my_function():
    var message: String = "Hello"
    take_text(message)
    print(message)


fn my_function2():
    var message: String = "Hello"
    take_text(message ^)
    # print(message)  # ERROR: The `message` variable is uninitialized


def main():
    my_function()
    my_function2()
