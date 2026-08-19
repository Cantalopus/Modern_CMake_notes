#include<iostream>
#include"car.h"


int main(int argv, char** argc){

    std::cout<<"A car rental"<<std::endl;
    Car volvo;
    std::cout<<volvo.honk()<<std::endl;

    return 0;
}