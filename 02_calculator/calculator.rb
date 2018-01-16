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
