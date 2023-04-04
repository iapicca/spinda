#### spinda

A package to help build [Spin][spin] microservice with [Dart][dart] 

#### get started

- install rust

```console
brew install rust
echo 'export PATH="$PATH":"$HOME/.cargo/env"'>> ~/.zshrc
echo 'export PATH="$PATH":"$HOME/.cargo/bin"'>> ~/.zshrc
source ~/.zshrc
```

- install spin

```console
git clone https://github.com/fermyon/spin -b v1.0
cd spin
rustup target add wasm32-wasi
cargo install --locked --path .
cd
```

- install dart

```console
brew install dart-sdk
echo 'export PATH="$PATH":"$HOME/.pub-cache/bin"'>> ~/.zshrc
source ~/.zshrc
```

[spin]: https://github.com/fermyon/spin
[dart]: https://github.com/dart-lang
