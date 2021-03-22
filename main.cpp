#include <iostream>

using namespace std;

static void firstMethod(int &b) {
    b = b * 4 + b;
}

static void secondMethod(int &b) {
    int a = b * 4 + b;
    b = a;
}

static int thirdMethod(int b) {
   return b * 4 + b;
 }

int main() {  

    int FooBar = 4;

    firstMethod(FooBar);
    std::cout << "firstMethod: " << FooBar << std::endl;

    FooBar = 4;
    secondMethod(FooBar);
    std::cout << "secondMethod: " << FooBar << std::endl;

    FooBar = 4;
    std::cout << "thirdMethod: " << thirdMethod(FooBar) << std::endl;


    return 0;  
}
