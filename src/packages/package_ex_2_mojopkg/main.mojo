# $ mojo package mypackage -o mypack.mojopkg

from mypack.mymodule import MyPair


fn main():
    let mine = MyPair(2, 4)
    mine.dump()
