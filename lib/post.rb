class Post
  attr_accessor :author, :name, :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def posts
    post = Post.new(post)
    post.author = self
    @posts << post
  end

  def author=(author_obj)
    @author = author_obj
    self.author.posts << self
  end


  def title=(title)
    @title = title
    @@all << title
  end

  def self.all
    @@all
  end

  def author_name
    self.author ? self.author.name : nil
  end
end
