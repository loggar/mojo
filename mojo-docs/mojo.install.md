# Mojo install

## Mac

https://developer.modular.com/download

Install the Modular CLI:

```
curl https://get.modular.com | sh - && \
modular auth mut_a61c0010a3ce438d85c8fd6403f58427
```

Install the Mojo SDK:

```
modular install mojo
```

Shell Profile:

```
# Mojo
export MODULAR_HOME="$HOME/.modular"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"
```

## REPL

https://docs.modular.com/mojo/manual/get-started/hello-world.html
