# list all recipes
list:
    just -l

hello-world-build:
    bazel build //main:hello-world

build:
    cmake -S . -B build
    cmake --build build

test: build
    ctest --test-dir build