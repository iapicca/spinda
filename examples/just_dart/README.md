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

- install Lima (optional)
```console
brew install lima
```

#### Run native

- build
```console
dart compile bin/server.dart -o ./server
```

- run
```console
./server
```

- benchmark
```console
wrk -t1 -c100 -d30s http://127.0.0.1:8080
```

#### Run Containerized

- start nerdctl
```console
limactl start && lima
```

- build (inside lima)
```console
nerdctl build -t just_dart .
```

- run (inside lima)
```
nerdctl run --init -p 8080:8080 just_dart
```

- benchmark (not in lima)
```console
wrk -t1 -c100 -d30s http://127.0.0.1:8080
```
