struct HeapArray:
    var data: Pointer[Int]
    var size: Int
    var cap: Int

    fn __init__(inout self, size: Int, val: Int):
        self.size = size
        self.cap = size * 2
        self.data = Pointer[Int].alloc(self.cap)
        for i in range(self.size):
            self.data.store(i, val)

    fn __copyinit__(inout self, existing: Self):
        # Deep-copy the existing value
        self.size = existing.size
        self.cap = existing.cap
        self.data = Pointer[Int].alloc(self.cap)
        for i in range(self.size):
            self.data.store(i, existing.data.load(i))
        # The lifetime of `existing` continues unchanged

    fn __del__(owned self):
        # We must free the heap-allocated data, but
        # Mojo knows how to destroy the other fields
        self.data.free()

    fn append(inout self, val: Int):
        # Update the array for demo purposes
        if self.size < self.cap:
            self.data.store(self.size, val)
            self.size += 1
        else:
            print("Out of bounds")

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


fn copies():
    var a = HeapArray(2, 1)
    var b = a  # Calls the copy constructor
    a.dump()  # Prints [1, 1]
    b.dump()  # Prints [1, 1]

    b.append(2)  # Changes the copied data
    b.dump()  # Prints [1, 1, 2]
    a.dump()  # Prints [1, 1] (the original did not change)


fn main():
    copies()
