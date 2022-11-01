

require_relative './article.rb'

class Author
  
  attr_reader :name


  def initialize(name)
    @name = name
 
  end

  def name
    @name
  end

  
##returns all articles written by the author
    def articles
      Article.all.filter do |article| 
         article.author.name==self.name
        
      end
    end

    
  
  
    ##returns a unique array of magazine instances the author contributed to

    def magazines
      @magazines = Article.all.filter do |article|
        article.author.name == self.name
      end.map do |filtered_magazine|
        filtered_magazine.magazine
      end
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
    @topics = Article.all.filter do |article|
      article.author.name == self.name
      end.map do |some_article|
        some_article.magazine.category
      end
    @topics.uniq
  end

  end

  
    
 
   
  




  