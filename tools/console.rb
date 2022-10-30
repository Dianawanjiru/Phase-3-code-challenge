require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end





###  WRITE YOUR TEST CODE HERE ###
author_object = Author.new("Dee")
magazine_object = Magazine.new("Wanjiru",  "Diana" )
magazine_object.name

article_name = Article.new(author_object, magazine_object,"article1")

author_object.name
magazine_object.name 



author_object1 = Author.new("Cate")
magazine_object1 = Magazine.new("kids",  "vogue" )
 article_name1 = Article.new(author_object1, magazine_object1,"article2")





   
   

   #wanjiru= Article.new (Wanjiru, parents, "Benefits of talking in a calm voice to your child")
   #kimberly=Article.new (Kimberly, forbes, "The denim can never go out of fashion")

 #dee = Author.new("Diana")
 #kim = Author.new("Wanjiru")
 #puts dee.name
 #puts kim.name

# m1 = Magazine.new("vogue", "fashion")
# m2 = Magazine.new("parents", "kids")








### DO NOT REMOVE THIS
binding.pry

0
