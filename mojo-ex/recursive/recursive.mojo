fn recursive(x: Int):
    if x == 0:
        return
    var stuff = DynamicVector[Int](x)
    for i in range(x):
        stuff.push_back(i)
    recursive(x - 1)


fn main():
    recursive(10_000)
