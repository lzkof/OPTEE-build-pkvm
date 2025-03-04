docker build --build-arg UID=$(id -u) --build-arg USERNAME=$(whoami) -t crosvm-build-container .
