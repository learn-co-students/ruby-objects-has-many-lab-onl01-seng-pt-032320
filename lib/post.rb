class Post
  attr_accessor :name, :author, :title
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def title
    @name
  end
  
  def author_name
    author.name if author
  end
  
end