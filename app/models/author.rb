

require_relative './article.rb'

class Author
  
  attr_accessor :name


  def initialize(name)
    @name = name
 
  end

  def name
    @name
  end

  
##returns all articles written by the author
    def articles
      Article.all.map do |article| 
        if article.author.name==self.name
        end
      end
    end

    
  
  
    ##returns a unique array of magazine instances the author contributed to

    def magazines
      ##call our articles method and map through it
      @magazines=Article.all.map do |article|
        if article.author.name == self.name
          article.magazine
        end
      end
      ##get unique magazines the author contributed to
      @magazines.uniq
      
    end
#Given a magazine (as Magazine instance) and a title (as a string), 
  #creates a new Article instance and associates it with that author and that magazine.
    def add_article(magazine, article)
      Article.new(self, magazine,title)

    end

    #Returns a **unique** array of strings with the categories 
  #of the magazines the author has contributed to
  def topics_contributed
    @topics = Article.all.map do |article|
      if article.author.name == self.name
        article.magazine.category
      end
    end
    @topics.uniq
  end
 
   
  

end


  