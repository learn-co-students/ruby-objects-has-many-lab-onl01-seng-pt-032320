class Post

 attr_accessor :title, :author
  
  @@all = [] 
  
  def initialize(title)
    @title = title #shouldn't the variable be called @title?
  @@all << self 
  end
  


 def self.all 
     @@all 
  end 


def author_name 
  if self.author
    self.author.name
  #else is not needed
end 
  
end 

end