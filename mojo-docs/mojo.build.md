# mojo build

## sample

```
mojo build -o target.mojo-ex/recursive mojo-ex/recursive/recursive.mojo
```

```
# Run
$ target.mojo-ex/recursive

# Benchmark (hyperfine- $ brew install hyperfine)
$ hyperfine target.mojo-ex/recursive
```
