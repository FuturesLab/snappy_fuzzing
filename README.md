# Snappy API Fuzzing

This repo contains auto-generated AFL-style harnesses for fuzzing.

**Tested on:** Linux x86-64, MacOS ARM.

## Collecting Bugs Reports

1. Run `./build.sh` to build the library with ASAN.

2. Run `make all` to build the harnesses.

3. Run `./asan.sh` to replay the crashes with ASAN.

4. ASAN reports will be saved in the `log-#.txt` files.
