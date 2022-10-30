

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
    Article.all.select {|article| article.author.name==self.name}
  end
  
    ##returns a unique array of magazine instances the author contributed to

    def magazines
      ##call our articles method and map through it
      @magazines=Article.all.select do |article|
        if article.author.name == self.name
          article.magazine
        end
      end
      ##get unique magazines the author contributed to
      @magazines.uniq
      
    end
 
   
  

end


  