#!/bin/sh

#g++ -std=c++11 -Wall -Wextra -o sayHello.out sayHello.cpp module1.cpp 
g++ -c -std=c++14 sayHello.cpp
g++ -c -std=c++14 module1.cpp
g++ -std=c++14 sayHello.o module1.o 
