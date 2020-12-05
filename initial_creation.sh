#!/usr/bin/bash
cd src || exit
sections="$1"
#startFolder="$2"
#endFolder="$3"
for n in $(seq -w $sections); do
  mkdir "Section[$n] : "
  cd "Section[$n] : " || exit
  touch readme.md
  touch CMakeLists.txt
  cd ..
done
#for n in $(seq -w $startFolder $endFolder); do
#    mkdir "[$n]"
#    cd "[$n]" || exit
#
#    echo "#include <iostream>
#int main() {
#    std::cout << \"Hello, World!\" << std::endl;
#    return 0;
#}" > main.cpp
#
#    touch readme.md
#
#    touch CMakeLists.txt
#    cd ..
#done
