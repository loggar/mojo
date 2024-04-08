struct HeapArray:
    var data: AnyPointer[Int]
    var size: Int

    # If self.data was an instance of AnyPointer, you'd need to use slightly different code:
    fn __del__(owned self):
        for i in range(self.size):
            _ = (self.data + i).take_value()
        self.data.free()
