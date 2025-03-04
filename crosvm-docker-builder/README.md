```
docker build --build-arg UID=$(id -u) --build-arg USERNAME=$(whoami) -t crosvm-build-container .
```

See: https://crosvm.dev/book/building_crosvm/linux.html

in Container:
```bash
# done in dockerfile (?)
sudo dpkg --add-architecture arm64
sudo apt update
apt install cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup install 1.77.2-x86_64-unknown-linux-gnu
rustup target add aarch64-unknown-linux-gnu

# installing deps:
/workspace/tools/setup
/workspace/tools/deps/install-aarch64-debs
cargo build --target aarch64-unknown-linux-gnu
```

