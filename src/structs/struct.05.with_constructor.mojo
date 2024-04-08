struct MyPet:
    var name: String
    var age: Int

    fn __init__(inout self, name: String, age: Int):
        self.name = name
        self.age = age


fn main():
    var mine = MyPet("Loki", 4)
    print(mine.name + " " + mine.age)
