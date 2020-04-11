class Author
  attr_accessor :name, :title
  
  def initialize(name)
    @name = name
    @title = self.name
  end
  
  def posts
    Post.all.select{|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(text)
    post = Post.new(text)
    post.author = self
  end
  
  
  def self.post_count
   count = Post.all.length
   count 
  end
end