#write your code here
def translate(word)
  vowel = ["a","e","i","o","u","y"]
  #si la première lettre est une voyelle
  if vowel.include?(word[0])
    word+"ay"
  else
    word = word.split('')
    translate_consonant(word)
  end
end

def translate_consonant(word)
  #traite le cas des mots avec une consonne au debut
  vowel = ["a","e","i","o","u","y"]
  i = 1
  #boucle pour savoir combien de consonnes successives il y'a au debut
  while not vowel.include?(word[i])
    i+=1
  end
  #to_move est une liste de i consonnes successives
  to_move = word.take(i)
  #on enlève les i premiers élements et on garde le reste
  word = word.drop(i)
  #on ajoute 'ay' à la suite des consonnes (to_move) avec push,
  #on regroupe les deux array (word et to_move)
  # on fait un *'' qui est equivalent à join('')
  (word.push+to_move.push("ay"))*''
end

puts translate_consonant ['b','b','b','i','a','n','a','n','a']
