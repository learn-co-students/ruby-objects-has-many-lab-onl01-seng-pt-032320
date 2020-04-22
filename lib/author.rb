class Author 
  attr_accessor :name, :posts
  
  

  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(title)
   title = Post.new(title)
   @posts << title
   post.author = self
  end
end