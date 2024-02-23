fn pow(base: Int, exp: Int = 2) -> Int:
    # you cannot define a default value for an argument that’s declared as inout.
    return base ** exp

fn use_defaults():
    # Uses the default value for `exp`
    let z = pow(3)
    print(z)


    