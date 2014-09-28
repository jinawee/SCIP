long A (int x, int y){

  if (y == 0) return 0;
  if (x == 0) return 2*y;
  if (y == 1) return 2;
  return A( x-1, A(x, y-1) );

}

#include<iostream>

int main(){
    int a;
    std::cout<< a;
    return 0;
}
