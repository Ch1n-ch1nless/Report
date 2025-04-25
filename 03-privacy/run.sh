#!/bin/bash

g++ -std=c++23 -fmodules-ts -c template.cpp -o template.o

g++ -std=c++23 -fmodules-ts -c main.cpp -o main.o

g++ template.o main.o -o my_program

./my_program