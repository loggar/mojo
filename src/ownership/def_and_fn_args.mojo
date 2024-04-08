def example(borrowed a: Int, inout b: Int, c):
    pass


fn this_is_same(a: Int, inout b: Int, owned c: object):
    pass


# Or, instead of specifying owned for the c argument, you can get the same effect by manually making a copy when you
# need it:
fn this_is_also_same(a: Int, inout b: Int, c_in: object):
    var c = c_in
    pass
