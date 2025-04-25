#!/bin/bash

# -fmodules-ts -- флаг компиляции, отвечающий за включение создания модулей (поддерживается с GCC-11, но лучше использовать GCC-13)
# -xc++-system-header -- флаг компиляции, отвечающий за перевод системного хедера в модуль

# Компилируем системные заголовки (требуется для g++)
g++ -std=c++23 -fmodules-ts -xc++-system-header iostream

# Собираем модуль A
g++ -std=c++23 -fmodules-ts -c A.cpp -o A.o

# Компилируем main.cpp
g++ -std=c++23 -fmodules-ts -c main.cpp -o main.o

# Линкуем объектные файлы
g++ A.o main.o -o program

# Запускаем программу
./program