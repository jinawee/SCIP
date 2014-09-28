def f(n):

  if n<3:
    return n;
  else: 
    return f(n-1) + 2*f(n-2) + 3*f(n-3)
	
	
def f_tabla(n):	

  tabla=[]
  i=0
  
  while i<=n:
	if i<3: tabla.append(i)
	else: tabla.append( tabla[i-1] + 2*tabla[i-2] + 3*tabla[i-3] )
	i += 1
  
  return tabla[n]  
  

def f_it(n):
  
  x,y,z= 0,0,0
  i=0
  
  while i<=n:
	z0 = z
	y , z= x, y
	if i<3: x = i
	else: x = y + 2*z + 3*z0
	i +=1
	
  return x