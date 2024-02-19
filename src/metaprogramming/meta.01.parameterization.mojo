fn repeat[count: Int](msg: String):
    for i in range(count):
        print(msg)


fn call_repeat():
    repeat[3]("Hello")
    # Prints "Hello" 3 times
