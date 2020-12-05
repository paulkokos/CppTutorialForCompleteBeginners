#!/usr/bin/bash
cd src || exit
startFolder="$1"
endFolder="$2"
for n in $(seq -w $startFolder $endFolder); do
    mkdir "[$n]"
    cd "[$n]" || exit
    echo "#include <iostream>
int main() {
    std::cout << \"Hello, World!\" << std::endl;
    return 0;
}" > main.cpp

    touch readme.md

    touch CMakeLists.txt
    cd ..
done
