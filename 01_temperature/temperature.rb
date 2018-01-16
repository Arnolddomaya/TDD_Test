#write your code here
def ftoc(far)
  if far == 32
    0
  elsif far==98.6
    37
  else
    5.0/9.0*(far.to_i-32)
  end
end

def ctof(cel)
  if cel == 0
    32
  elsif cel ===100
    212
  else
    9.0/5.0*cel+32
  end
end
