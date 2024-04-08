struct MyPet:
    var name: String
    var age: Int

    fn __init__(inout self):
        self.name = ""
        self.age = 0

    fn __init__(inout self, name: String):
        self = MyPet()
        self.name = name
