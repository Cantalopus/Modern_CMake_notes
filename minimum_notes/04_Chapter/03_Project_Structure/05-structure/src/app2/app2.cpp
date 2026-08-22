#include<iostream>
#include"lib1.h"
#include"lib2.h"

int main() {
    std::cout<<"App2 main()"<<std::endl;

    Lib2 lib2;
    std::cout<<lib2.method()<<std::endl;

    Lib1 lib1;
    std::cout<<lib1.method()<<std::endl;

    return 0;
}