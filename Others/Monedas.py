def menos(m):
  n=list(m)
  del(n[0])
  return n


def comb(a, tipos):
  if a== 0: return 1
  if a<0 or  tipos==[]: return 0
  return comb(a - tipos[0], tipos)+ comb(a, menos(tipos))

tipos=[50,25,10,5,1]


print comb(100, tipos)