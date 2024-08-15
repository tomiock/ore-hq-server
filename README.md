# Ore Pool Server
This is an ore (crypto token) server.

## Building With `Nix` Shell

Install `Nix` using:
```
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```
This is a script from the [Determinate Nix Installer](https://github.com/DeterminateSystems/nix-installer)

Get into the shell with the necessary dependencies and environment variables for the `cargo build` to work:
```
nix-shell
```

Inside the shell compile the crate:
```
cargo build --release
```

