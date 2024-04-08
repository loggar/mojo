# def function gets ownership for its arguments by default (usually as a copy)
def update_tensor(t: Tensor[DType.uint8]):
    t[1] = 3
    print(t)


# fn function receives the y value is a "look but don't touch"
fn add_two(y: Int):
    # y += 2 # This will cause a compiler error because `y` is immutable
    # We can instead make an explicit copy:
    var z = y
    z += 2
    print(z)


def main():
    t = Tensor[DType.uint8](2)
    t[0] = 1
    t[1] = 2
    update_tensor(t)
    print(t)

    x = 1
    add_two(x)
    print(x)
