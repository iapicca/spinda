#### spinda

[Spin][spin] + [Dart][dart]


#### getting started

- install spin

```console
cd
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo 'export PATH="$PATH":"$HOME/.cargo/env"'>> ~/.zshrc
echo 'export PATH="$PATH":"$HOME/.cargo/bin"'>> ~/.zshrc
source ~/.zshrc
git clone https://github.com/fermyon/spin -b v1.0
cd spin
rustup target add wasm32-wasi
cargo install --locked --path .
cd
```

[spin]: https://github.com/fermyon/spin
[dart]: https://github.com/dart-lang

- install dart

```console
brew install dart-sdk
echo 'export PATH="$PATH":export PATH="$PATH":"$HOME/.pub-cache/bin"'>> ~/.zshrc
source ~/.zshrc
```