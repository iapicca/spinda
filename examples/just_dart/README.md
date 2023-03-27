#### What's this?

Just a minimalist "Hello world" server build in Dart 


#### Yes, but why?

For benchmark purpose


#### Set Up

- install Dart

```console
brew install dart-sdk
echo 'export PATH="$PATH":export PATH="$PATH":"$HOME/.pub-cache/bin"'>> ~/.zshrc
source ~/.zshrc
```

- install Wrk

```console
brew install wrk
```

#### Run native

- compile
```console
dart compile bin/just_dart.dart -o ./server
```

- run
```console
./server
```

- benchmark
```console
wrk -t1 -c100 -d30s http://127.0.0.1:8080
```
