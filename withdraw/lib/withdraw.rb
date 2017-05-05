def withdraw(n)
  str = n.to_s
  check = str[-2].to_i

  return [n/100,0,(n%100)/20] if check % 2 == 0
  return [n/100,(n%100)/50,0] if check % 5 == 0
  return [n/100,1,1] if check ==  7
  return [n/100,1,2] if check ==  9
  return [n/100 - 1,1,4] if check ==  3
  return [n/100 - 1,1,3] if check == 1    
end
