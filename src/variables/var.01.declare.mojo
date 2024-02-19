def do_math(x):
    var y = x + x  # y is mutable
    y = y * y
    let z = y + x  # z is immutable
    # z = z + 1 # invalid mutation of immutable value 'z'
    return z


def add_one(x):
    let y: Int = 1
    return x + y


def main():
    z = do_math(1)  # var z is mutable
    z = z + 1
    print(z)
    let a = add_one(1)
    # a = a + 1 # lett a is immutable
    print(a)
