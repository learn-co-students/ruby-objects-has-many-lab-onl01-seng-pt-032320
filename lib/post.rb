class Post 
  
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
  end 
  
end 