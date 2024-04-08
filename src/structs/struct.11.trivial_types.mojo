"""
Mojo provides a struct decorator to declare these types of values: @register_passable("trivial"). This decorator tells 
Mojo that the type should be copyable and movable but that it has no user-defined logic (no lifecycle methods) for 
doing this. It also tells Mojo to pass the value in CPU registers whenever possible, which has clear performance benefits.

You'll see this decorator on types like Int in the standard library:
"""


@register_passable("trivial")
struct Int:
    var value: __mlir_type.index

    fn __init__(value: __mlir_type.index) -> Int:
        return Self {value: value}
