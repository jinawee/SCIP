def sig(a):
  b = [1]
  i = 0
  while i < (len(a)-1):
    b.append ( a[i] + a[i+1] )
    i+=1
  b.append(1)
  print b
  return b
  
def pascal(x):
  a=[1]
  for n in range(x-1):
    a=sig(a)
  return a	
	
def pascal_rec(x, y):
  x -= 1
  y -= 1
  if y==0 or y==x: return 1
  else: return pascal_rec(x-1, y-1) + pascal_rec(x-1,y)

def pascal_triangle (x, y): 
  if y > x: return 0
  if y < 0: return 0
  if y == 1: return 1
  return pascal_triangle (x - 1, y - 1) + pascal_triangle (x - 1, y)  


print pascal_triangle(5,2)