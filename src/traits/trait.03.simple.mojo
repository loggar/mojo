trait Quackable:
    fn quack(self):
        ...


@value
struct Duck(Quackable):
    fn quack(self):
        print("Quack")


@value
struct StealthCow(Quackable):
    fn quack(self):
        print("Moo!")


fn make_it_quack[T: Quackable](maybe_a_duck: T):
    maybe_a_duck.quack()


fn main():
    make_it_quack(Duck())
    make_it_quack(StealthCow())
