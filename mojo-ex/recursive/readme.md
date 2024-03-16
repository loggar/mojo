# Benchmark an app

```
$ mojo build -o target.mojo-ex/recursive ./mojo-ex/recursive/recursive.mojo
```

```
$ cd target.mojo-ex
$ hyperfine -i ./target.mojo-ex/recursive
```
