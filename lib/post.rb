class Post 
  
  attr_accessor :author, :title
  
  @@all = [] 
  
  def initialize (title)
    @title = title 
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def title 
    @title 
  end 
  
  def author 
  end 
  
  def author_name
    if (self.author != nil)
      return self.author.name
    else 
      return self.author
    end 
  end 
  
end 