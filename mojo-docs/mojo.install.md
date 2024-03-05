# Mojo install and update

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

Update:

```
brew update

brew upgrade modular
```

## apt (ubuntu)

```
curl https://get.modular.com | \
  MODULAR_AUTH=mut_fe303dc5ca504bc4867a1db20d897fd8 \
  sh -


modualr auth
# https://docs.modular.com/engine/get-started#1-install-the-max-sdk

# apt install python3.8-venv
modular install mojo
```

```
BASHRC=$( [ -f "$HOME/.bash_profile" ] && echo "$HOME/.bash_profile" || echo "$HOME/.bashrc" )
echo 'export MODULAR_HOME="/home/loggar/.modular"' >> "$BASHRC"
echo 'export PATH="/home/loggar/.modular/pkg/packages.modular.com_mojo/bin:$PATH"' >> "$BASHRC"
source "$BASHRC"
```

```
mojo --version
```

Update:

```
sudo apt update

sudo apt install modular
```

## REPL

https://docs.modular.com/mojo/manual/get-started/hello-world.html
