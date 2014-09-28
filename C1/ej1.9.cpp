#include<iostream>


float inc (float x){ return x+1; }


float dec (float x){ return x-1; }


float plus_itr (float a, float b){
  if (a==0){
    return b;
    }
  else{
   return inc (dec(a) + b);
   }
}


float plus_rec (float a, float b){
  if (a==0){
    return b;
  }
  else{
    return plus_rec( dec(a), inc(b));
  }
}


int main(){
    std::cout<<plus_itr(4,5);
    std::cout<<"\n";
    std::cout<<plus_rec(4,5);
    return 0;
}
