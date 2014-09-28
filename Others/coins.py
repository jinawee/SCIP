def count_change (amount):
  return cc (amount, 5)
  
  
def cc (amount, kinds_of_coins):
  coins={1:1, 2:5, 3:10, 4:25, 5:50}
  if amount == 0: return 1
  if (amount < 0) or (kinds_of_coins == 0): return 0
  else: return cc( amount, kinds_of_coins - 1) + cc( amount - coins[kinds_of_coins], kinds_of_coins)


  


print count_change(11)