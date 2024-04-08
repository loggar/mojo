fn add(inout x: Int, borrowed y: Int):
    x += y


def mutate(inout y: Int):
    y += 1


def mutate_copy(y: Int) -> Int:
    y += 1
    return y


fn main():
    var a = 1
    var b = 2
    add(a, b)
    print(a)  # Prints 3

    var x = 1
    try:
        var k = mutate(x)
    except e:
        print(e)
    print(x)

    var z = 1
    try:
        z = mutate_copy(z)
    except e:
        print(e)
    print(z)
