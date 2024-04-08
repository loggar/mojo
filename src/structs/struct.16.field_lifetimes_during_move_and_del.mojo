# the following code works as you would expect (within the destructor, we can still pass ownership of a field value to
# another function, and there's no infinite loop to destroy self):
fn consume(owned str: String):
    print("Consumed", str)


struct TwoStrings:
    var str1: String
    var str2: String

    fn __init__(inout self, one: String):
        self.str1 = one
        self.str2 = String("bar")

    fn __moveinit__(inout self, owned existing: Self):
        self.str1 = existing.str1
        self.str2 = existing.str2

    fn __del__(owned self):
        self.dump()  # Self is still whole here
        # Mojo calls self.str2.__del__() since str2 isn't used anymore

        consume(self.str1 ^)
        # self.str1 has been transferred so it is also destroyed now;
        # `self.__del__()` is not called (avoiding an infinite loop).

    fn dump(inout self):
        print("str1:", self.str1)
        print("str2:", self.str2)


fn use_two_strings():
    var two_strings = TwoStrings("foo")
