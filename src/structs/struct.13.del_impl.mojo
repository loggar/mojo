struct HeapArray:
    var data: Pointer[Int]
    var size: Int

    fn __init__(inout self, size: Int, val: Int):
        self.size = size
        self.data = Pointer[Int].alloc(self.size)
        for i in range(self.size):
            self.data.store(i, val)

    # fn __del__(owned self):
    #     self.data.free()

    fn __del__(owned self):
        for i in range(self.size):
            _ = __get_address_as_owned_value((self.data + i).address)
        self.data.free()
