#write your code here
def add(var1, var2)
  return var1+var2
end

def subtract(var1, var2)
  var1-var2
end

#on ajoute chaque element de la liste à la variable sum qui
#a pour valeur initiale 0
def sum (array)
  return array.inject(0){|sum,x| sum + x }
end

#on simplifie multiply en la faisant prendre en entrée un array d'entier
#je n'ai pas reussis à trouver comment faire pour qu'une fonction prenne
#un nombre variable de d'arguments, si tu le sais, merci de me l'expliquer :)
def multiply(inters)
  res = 1
  inters.each do |i|
    res = res*i
  end
  res
end

def power(number, pw)
  res = 1
  pw.times do
    res=res*number
  end
  res
end

def factorial(nmbr)

  res = 1
  puts " nombre = #{nmbr}"
  if nmbr == 0
     1
  else
    nmbr.times do |i|
      res = res*(i+1)
    end
    res
  end
end
