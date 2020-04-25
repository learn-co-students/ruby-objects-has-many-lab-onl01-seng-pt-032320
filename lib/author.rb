class Author 
  attr_accessor  :name
  def initialize(name)
    @name = name
    title = []
  end
  
  def posts
   Post.all.select do |posts|
    posts.author == self
   end
end 
def add_post(posts)
    posts.author = self 
  end
  
  def add_post_by_title(title) 
     post = Post.new(title)
   add_post(post)
  end
  
  def self.post_count
    Post.all.count
  end

end
