class Author

  attr_accessor :name
  attr_reader :posts

  @@total = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    self.add_post(post)
  end

  def self.post_count
    @@total
  end

  def self.add_total
    @@total +=1
  end

end
