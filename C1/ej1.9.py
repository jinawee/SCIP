def inc (x): return x+1

def dec (x): return x-1


def plus_itr (a, b):
  if a==0:
    return b
  else:
   return inc (plus_itr (dec(a),  b) )


def plus_rec (a, b):
  if a==0:
    return b
  else:
    return plus_rec( dec(a), inc(b))


print plus_itr(4,5)
print plus_rec(4, 5)	