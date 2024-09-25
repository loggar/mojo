trait SomeTrait:
    fn required_method(self, x: Int):
        ...


struct SomeStruct(SomeTrait):
    var first: Int

    fn __init__(inout self, first: Int):
        self.first = first

    fn required_method(self, x: Int):
        print("hello traits", x)


fn fun_with_traits[T: SomeTrait](x: T):
    x.required_method(42)


fn use_trait_function():
    var thing = SomeStruct(1)
    fun_with_traits(thing)


fn main():
    use_trait_function()
