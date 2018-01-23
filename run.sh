sudo apt-get update
sudo apt-get -y install gcc g++
git clone https://github.com/chenq182/jni
cd jni
javah org.Hello
gcc -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux -fPIC -c Hello.cpp
gcc -shared -Wl,-soname,libhello.so.1 -o libhello.so Hello.o
export LD_LIBRARY_PATH=`pwd`:
javac ToSay.java
java ToSay
