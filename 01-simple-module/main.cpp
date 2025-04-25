import <iostream>;

import A;

int main() {
    std::cout << hello() << zero() << '\n';
    std::cout << hi::english() << '\n';

    //Error, because world() not exported
    #if 0
        std::cout << world() << '\n';
    #endif

    return 0;
}