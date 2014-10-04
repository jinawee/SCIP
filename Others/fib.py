from time import clock
import matplotlib.pyplot as plt

def fib (n):
  if n==0:
    return 0
  if n==1:
    return 1
  else:
    return fib(n-1) + fib(n-2)
	

def fib_it (x):
  if x == 0: return 0
  if x == 1: return 1
  i = 1
  j = 0
  
  for n in range (x-1):
	r = i + j
	j = i
	i = r
  return r
  
  
def nfib (n):
  return fib_iter (1, 0, n)

def fib_iter (a, b, count):
  if count==0: 
    return b
  else: 
    return  fib_iter( a + b,  a, count - 1)  

print fib(10)
print nfib(10)
