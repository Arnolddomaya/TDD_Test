class Book
# write your code here
  attr_reader :title
  attr_writer :title

  def title()
     prepo_conjunc_article =["and", "a","an","the", "for","of","by","over","at","on" , "in" ,
        "of" , "for" , "from" , "to" , "into" , "by" , "across" , "around" , "near" , "with" , "about" , "along"]
     #si l'element n'est pas dans la liste des préposition+conjonctions+articles, on la capitalize
     @title = @title.split.map{|x| ( (not prepo_conjunc_article.include?(x))? x.capitalize : x) }*' '
     @title= @title.split
     @title[0] = @title[0].capitalize
     @title = @title*' '
  end
end
