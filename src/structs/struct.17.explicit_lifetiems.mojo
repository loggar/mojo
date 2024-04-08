fn consume(owned str: String):
    print("Consumed", str)


@value
struct TwoStrings:
    var obj1: String
    var obj2: String

    fn dump(inout self):
        print("str1:", self.obj1)
        print("str2:", self.obj2)

    fn __del__(owned self):
        self.dump()  # Self is still whole here

        consume(self.obj2 ^)
        _ = self.obj1
        # Mojo keeps `obj1` alive until here, after its "last use"
