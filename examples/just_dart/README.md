### What's this?

Just a minimalist "Hello world" server build in Dart 

### Yes, but why?

For benchmark purpose

### Set Up

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

### Run native

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

<details>
  <summary>results</summary>
  
```console
Running 30s test @ http://127.0.0.1:8080
  1 threads and 100 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.06ms   93.31us  12.90ms   92.97%
    Req/Sec    48.73k   799.42    49.48k    97.67%
  1459747 requests in 30.10s, 299.31MB read
Requests/sec:  48490.47
Transfer/sec:      9.94MB
```

```console
                    'c.          
                 ,xNMM.          ---------------------------
               .OMMMMo           OS: macOS 13.2.1 22D68 arm64
               OMMM0,            Host: MacBookAir10,1
     .;loddo:' loolloddol;.      Kernel: 22.3.0
   cKMMMMMMMMMMNWMMMMMMMMMM0:    Uptime: 4 mins
 .KMMMMMMMMMMMMMMMMMMMMMMMWd.    Packages: 118 (brew)
 XMMMMMMMMMMMMMMMMMMMMMMMX.      Shell: zsh 5.8.1
;MMMMMMMMMMMMMMMMMMMMMMMM:       Resolution: 1440x900
:MMMMMMMMMMMMMMMMMMMMMMMM:       DE: Aqua
.MMMMMMMMMMMMMMMMMMMMMMMMX.      WM: Quartz Compositor
 kMMMMMMMMMMMMMMMMMMMMMMMMWd.    WM Theme: Blue (Dark)
 .XMMMMMMMMMMMMMMMMMMMMMMMMMMk   Terminal: /dev/ttys000
  .XMMMMMMMMMMMMMMMMMMMMMMMMK.   CPU: Apple M1
    kMMMMMMMMMMMMMMMMMMMMMMd     GPU: Apple M1
     ;KMMMMMMMWXXWMMMMMMMk.      Memory: 1073MiB / 8192MiB
       .cooc,.    .,coo:.
```

</details>


### Run Containerized

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

<details>
  <summary>results</summary>
  
```console
Running 30s test @ http://127.0.0.1:8080
  1 threads and 100 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.98ms    3.71ms 120.80ms   99.17%
    Req/Sec    26.13k     5.85k   32.19k    75.67%
  780205 requests in 30.01s, 159.97MB read
Requests/sec:  26000.84
Transfer/sec:      5.33MB
```

```console
                    'c.          
                 ,xNMM.          ---------------------------
               .OMMMMo           OS: macOS 13.2.1 22D68 arm64
               OMMM0,            Host: MacBookAir10,1
     .;loddo:' loolloddol;.      Kernel: 22.3.0
   cKMMMMMMMMMMNWMMMMMMMMMM0:    Uptime: 4 mins
 .KMMMMMMMMMMMMMMMMMMMMMMMWd.    Packages: 118 (brew)
 XMMMMMMMMMMMMMMMMMMMMMMMX.      Shell: zsh 5.8.1
;MMMMMMMMMMMMMMMMMMMMMMMM:       Resolution: 1440x900
:MMMMMMMMMMMMMMMMMMMMMMMM:       DE: Aqua
.MMMMMMMMMMMMMMMMMMMMMMMMX.      WM: Quartz Compositor
 kMMMMMMMMMMMMMMMMMMMMMMMMWd.    WM Theme: Blue (Dark)
 .XMMMMMMMMMMMMMMMMMMMMMMMMMMk   Terminal: /dev/ttys000
  .XMMMMMMMMMMMMMMMMMMMMMMMMK.   CPU: Apple M1
    kMMMMMMMMMMMMMMMMMMMMMMd     GPU: Apple M1
     ;KMMMMMMMWXXWMMMMMMMk.      Memory: 1073MiB / 8192MiB
       .cooc,.    .,coo:.
```

</details>