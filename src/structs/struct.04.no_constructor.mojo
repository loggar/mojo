struct NoInstances:
    var state: Int

    @staticmethod
    fn print_hello():
        print("Hello world!")


fn main():
    NoInstances.print_hello()
