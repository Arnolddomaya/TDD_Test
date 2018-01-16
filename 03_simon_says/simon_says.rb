#write your code here
def echo(str)
   str
end

def shout(str)
   str.upcase
end

def repeat(str,number=2)
  str+(' '+str)*(number-1)
end

def start_of_word(word,number=1)
  word[0..number-1]
end

def first_word(str)
  str.split()[0]
end

def titleize(word)
  #####word.split.map(&:capitalize)*' '
  #on découpe la chaine de carractère avec split
  #on parcour chaque mot avec map
  #on met en majuscule le mot s'il n'est pas dans little_words, sinon on ne laisse tel quel
  #on regroupe le resultat avec des espaces entre les mots avec " *' ' " qui est equivalent à joint(' ')
  little_words =["and", "the", "for", "to","of","by","over"]
  word = word.split.map{|x| ( (not little_words.include?(x))? x.capitalize : x) }*' '
  #on met systématiquement le premier element de la chaine en masjuscule
  word = word.split
  word[0] = word[0].capitalize
  word = word*' '
end
