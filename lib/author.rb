class Author 
  attr_accessor :name, :post
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select { |post_name|
      post_name.author == self
    }
  end
  
  def add_post(post_name)
    post_name.author = self
  end
  
  def add_post_by_title(post_name)
    post = Post.new(post_name)
    post.author = self
  end
  
  def self.post_count
    Post.all.count
  end
end