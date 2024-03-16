"""
Mojo will notice that you don't have a member-wise initializer, a move constructor, or a copy constructor, and it will synthesize these for you as if you had written:

struct MyPet:
    var name: String
    var age: Int

    fn __init__(inout self, owned name: String, age: Int):
        self.name = name^
        self.age = age

    fn __copyinit__(inout self, existing: Self):
        self.name = existing.name
        self.age = existing.age

    fn __moveinit__(inout self, owned existing: Self):
        self.name = existing.name^
        self.age = existing.age

Without the copy and move constructors, the following code would not work because Mojo would not know how to copy an instance of MyPet.
"""


@value
struct MyPet:
    var name: String
    var age: Int


fn main():
    var dog = MyPet("Charlie", 5)
    var poodle = dog
    print(poodle.name)
