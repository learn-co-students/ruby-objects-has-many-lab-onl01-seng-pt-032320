class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
  end
def posts
    Post.all.select do |post| post.author == self
  end
end
def add_post(post)
    self.posts << post
    post.author = self
    @@post_count +=1
  end
  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count +=1
  end
  def self.post_count
  Post.all.length
  end
end
  

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