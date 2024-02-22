fn pow(base: Int, exp: Int = 2) -> Int:
    return base ** exp

fn use_keywords():
    # Uses keyword argument names (with order reversed)
    let z = pow(exp=3, base=2)
    print(z)
