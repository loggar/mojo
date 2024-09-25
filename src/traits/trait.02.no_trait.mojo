@value
struct Duck:
    fn quack(self):
        print("Quack")


@value
struct StealthCow:
    fn quack(self):
        print("Moo!")


fn make_it_quack(definitely_a_duck: Duck):
    definitely_a_duck.quack()


fn make_it_quack(not_a_duck: StealthCow):
    not_a_duck.quack()


fn main():
    make_it_quack(Duck())
    make_it_quack(StealthCow())
