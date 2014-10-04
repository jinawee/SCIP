#include <iostream>


float square (float x) { return x*x;}


float abs (float x) {
    if (x>=0) { return x;}
    else { return -x;}
}


bool good_enough (float guess, float x){
    if ( abs(square(guess) - x) <= 0.001){
        return true;
        }
    else{ return false;}
}


float average (float x, float y){
    return (x+y)/2;
}


float improve (float guess, float x){
    return average (guess,x/guess);
    }


float sqrt_iter (float guess,float x){
    if (good_enough (guess, x)){
        return guess;
  }
  else{
	return sqrt_iter (improve (guess, x), x);
  }
}


float sqrt_newton(float x){
  return sqrt_iter(1.0, x);
}


int main(){
    std::cout<<sqrt_newton(2);
    return 0;
}
