fn add(x: Int, y: Int) -> Int:
    return x + y

fn add(x: String, y: String) -> String:
    return x + y

@value
struct MyString:
    fn __init__(inout self, string: StringLiteral):
        pass

fn foo(name: String):
    print("String")

fn foo(name: MyString):
    print("MyString")

fn call_foo():
    let string = "Hello"
    # foo(string) # This call is ambiguous because two `foo` functions match it
    foo(MyString(string))
