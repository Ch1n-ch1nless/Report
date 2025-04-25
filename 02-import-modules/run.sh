g++ -fmodules-ts -c A.cpp -o A.o
g++ -fmodules-ts -c B.cpp -o B.o
g++ -fmodules-ts -c main.cpp -o main.o

g++ A.o B.o main.o -o my_program

./my_program