class Author
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post_obj)
    @posts << post_obj
    @posts.posts = self
  end
  
end