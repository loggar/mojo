@value
struct MyPet:
    var name: String
    var age: Int


fn use_two_strings():
    var pet = MyPet("Po", 8)
    print(pet.name)
    # pet.name.__del__() runs here, because this instance is
    # no longer used; it's replaced below

    pet.name = String("Lola")  # Overwrite pet.name
    print(pet.name)
    # pet.__del__() runs here


fn consume(owned arg: String):
    pass


fn use(arg: MyPet):
    print(arg.name)


fn consume_and_use():
    var pet = MyPet("Selma", 5)
    consume(pet.name ^)
    # pet.name.__moveinit__() runs here, which destroys pet.name
    # Now pet is only partially initialized

    # use(pet)  # This fails because pet.name is uninitialized

    pet.name = String("Jasper")  # All together now
    use(pet)  # This is ok
    # pet.__del__() runs here (and only if the object is whole)
