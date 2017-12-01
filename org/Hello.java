package org;

public class Hello {
    static {
        try {
            System.loadLibrary("hello"); // 此处即为本地方法所在链接库名
        } catch(UnsatisfiedLinkError e) {
            System.err.println("Cannot load hello library:\n " + e.toString());
        }
    }

    public Hello() {}

    public native void SayHello(String strName); // 声明的本地方法
}
