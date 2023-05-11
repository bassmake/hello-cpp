# list all recipes
list:
    just -l

build:
    cmake -S . -B build
    cmake --build build

test: build
    ctest --test-dir build