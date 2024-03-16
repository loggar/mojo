def lexical_scopes():
    var num = 10
    var dig = 1
    if True:
        print("num:", num)  # Reads the outer-scope "num"
        var num = 20  # Creates new inner-scope "num"
        print("num:", num)  # Reads the inner-scope "num"
        dig = 2  # Edits the outer-scope "dig"
    print("num:", num)  # Reads the outer-scope "num"
    print("dig:", dig)  # Reads the outer-scope "dig"


def function_scopes():
    num = 1
    if num == 1:
        print(num)  # Reads the function-scope "num"
        num = 2  # Updates the function-scope variable
        print(num)  # Reads the function-scope "num"
    print(num)  # Reads the function-scope "num"


def main():
    lexical_scopes()
    function_scopes()
