def cube (x): return x*x*x

def square (x): return x*x

def good_enough (guess, x):
  if ( abs(cube(guess) - x) <= 0.001):
    return True
  else:
    return False

  
def improve (guess, x):
  return ( x/( square(guess)) + 2*guess )/3

  
def cbrt_iter (guess, x):
  if (good_enough (guess, x)):
    return guess
  else:    
    #print guess
    return cbrt_iter (improve (guess, x), x)
	
	
def cbrt_newton(x):
  return cbrt_iter(1.0, x)
  
if __name__=='__main__':
  print cbrt_newton(5) 
