#include "module1.hpp"

std::string getHello(int n) {
  //int * ptr = 0;
  //*ptr = 37;
  std::string str = "Hello World 3 ";
  str += std::to_string(n);
  str += "!";
  return str;
}

