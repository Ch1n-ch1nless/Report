#!/bin/bash

g++ -std=c++23 -fmodules-ts -c A-B.cpp -o A-B.o
g++ -std=c++23 -fmodules-ts -c A-C.cpp -o A-C.o
g++ -std=c++23 -fmodules-ts -c A.cpp -o A.o

g++ -std=c++23 -fmodules-ts -c main.cpp -o main.o

g++ A-B.o A-C.o A.o main.o -o program

# Запускаем программу
./program