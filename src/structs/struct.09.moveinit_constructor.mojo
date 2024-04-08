struct HeapArray:
    var data: Pointer[Int]
    var size: Int

    fn __init__(inout self, size: Int, val: Int):
        self.size = size
        self.data = Pointer[Int].alloc(self.size)
        for i in range(self.size):
            self.data.store(i, val)

    fn __copyinit__(inout self, existing: Self):
        # Deep-copy the existing value
        self.size = existing.size
        self.data = Pointer[Int].alloc(self.size)
        for i in range(self.size):
            self.data.store(i, existing.data.load(i))

    fn __moveinit__(inout self, owned existing: Self):
        print("move")
        # Shallow copy the existing value
        self.size = existing.size
        self.data = existing.data
        # Then the lifetime of `existing` ends here, but
        # Mojo does NOT call its destructor

    fn __del__(owned self):
        self.data.free()

    fn dump(self):
        # Initialize an empty string to accumulate the array representation
        var arrayStr = String("[")

        for i in range(self.size):
            # For each element, append it and a comma to the string, except for the last element
            arrayStr += str(self.data.load(i))
            if i < self.size - 1:
                arrayStr += ", "

        # Close the array representation with a closing bracket
        arrayStr += "]"

        # Print the entire array representation in one line
        print(arrayStr)


fn moves():
    var a = HeapArray(3, 1)

    a.dump()  # Prints [1, 1, 1]

    var b = a ^  # Prints "move"; the lifetime of `a` ends here

    b.dump()  # Prints [1, 1, 1]
    # a.dump()  # ERROR: use of uninitialized value 'a'


fn main():
    moves()
