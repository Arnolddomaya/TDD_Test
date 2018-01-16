#write your code here
def translate(string)
  vowel = ["a","e","i","o","u","y"]
  res = []
  #si la première lettre est une voyelle
  string.split.each do |word|
    if vowel.include?(word[0])
      res << word+"ay"
    elsif word[0] =='q'
      res << case_q(word,true)
    elsif word[1] =='q'
      res << case_q(word,false)
    else
      res << translate_consonant(word)
    end
  end
  res*' '
end


#traite le cas de la lettre q
def case_q(word,first_letter )
  vowel = ["a","e","i","o","u","y"]
  #si le q est la première lettre du mot
  if first_letter
    #si la 2eme lettre n'est pas un 'u', on traite le mot avec translate_consonant
    unless word[1] =="u"
      translate_consonant(word)
     #si la 2eme lettre est un 'u'
    else
      move_and_add(word,2)
    end
  #si il est à la seconde position
  else
    #si la prémière lettre est une voyelle
    if vowel.include?(word[0])
      word+"ay"
    #si la prémière lettre n'est pas une voyelle (consonne) et la 3eme, un 'u'
    elsif not vowel.include?(word[0]) && word[2] == "u"
      move_and_add(word,3)
    else
      translate_consonant(word)
    end
  end
end


#deplace les n premiers lettre à la fin du mot et rajoute 'ay'
#retourne une chaine de carractère
def move_and_add(word, n_first_letters)
  word = word.split('')
  #to_move est un array de i consonnes successives
  to_move = word.take(n_first_letters)
  #on enlève les i premiers élements et on garde le reste
  word = word.drop(n_first_letters)
  #on ajoute 'ay' à la suite des consonnes (to_move) avec push,
  #on regroupe les deux array (word +to_move)
  # on fait un *'' qui est equivalent à join('')
  (word+to_move.push("ay"))*''
end


def translate_consonant(word)
  #traite le cas des mots avec une consonne au debut
  vowel = ["a","e","i","o","u","y"]
  i = 1
  #boucle pour savoir combien de consonnes successives il y'a au debut
  while not vowel.include?(word[i])
    i+=1
  end
  move_and_add(word,i)
end


puts translate "quite school baby how are you squate"
