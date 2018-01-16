#write your code here
def add(var1, var2)
  return var1+var2
end

def subtract(var1, var2)
  var1-var2
end

def sum (array)
  return array.inject(0){|sum,x| sum + x }
end

def multiply(a,b)
  a*b

end

def power(number, pw)
  res = 1
  pw.times do
    res=res*number
  end
  res
end

def factorial(nmb)
  res = 1
  if nmbr == 0 then 1 end
  3.times do |i|
    res = res*(i+1)
  end
end
