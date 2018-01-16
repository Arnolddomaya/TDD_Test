#write your code here
def translate(word)
  vowel = ["a","e","i","o","u","y"]
  #si la première lettre est une voyelle
  if vowel.include?(word[0])
    word+"ay"
  else
    word = word.split('')
    first_char = word[0]
    second_char = word[1]
    #si la 2eme est une voyelle
    if  vowel.include?(second_char)
      #push insert l'element à la fin; shift enlève le premier element et le retourne
      word.shift
      word.push(first_char+"ay")*''
    #si la 2eme est une consonne
    else
      word = word.drop(2)
      word.push(first_char+second_char+"ay")*''
    end
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
  to_move = word.take(i)
  word = word.drop(i)
  word.push(to_move+"ay")*''
end
