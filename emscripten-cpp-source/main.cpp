#include <iostream>
#include <emscripten/bind.h>

using namespace emscripten;

constexpr int product(int x, int y) 
{ 
    return (x * y); 
}

EMSCRIPTEN_BINDINGS(my_module) {
    constant("MY_CONST", product(10, 20));
}