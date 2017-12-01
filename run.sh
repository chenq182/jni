#!/bin/bash

# apt-get install gcc
# apt-get install g++

javah org.Hello
gcc -I/usr/share/java/include -I/usr/share/java/include/linux -fPIC -c Hello.cpp
gcc -shared -Wl,-soname,libhello.so.1 -o libhello.so Hello.o
export LD_LIBRARY_PATH=`pwd`:
javac ToSay.java

java ToSay
