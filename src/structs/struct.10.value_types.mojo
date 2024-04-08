"""
@value
struct MyPet:
    var name: String
    var age: Int
"""

# Mojo sees the @value decorator and notices that you don't have a member-wise initializer (a constructor with arguments
# for each field), a copy constructor, or a move constructor, so it synthesizes them for you. The result is as if you
# had actually written this:


struct MyPet:
    var name: String
    var age: Int

    fn __init__(inout self, owned name: String, age: Int):
        self.name = name ^
        self.age = age

    fn __copyinit__(inout self, existing: Self):
        self.name = existing.name
        self.age = existing.age

    fn __moveinit__(inout self, owned existing: Self):
        self.name = existing.name ^
        self.age = existing.age
