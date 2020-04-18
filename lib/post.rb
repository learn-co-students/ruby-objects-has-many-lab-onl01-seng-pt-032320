class Post
@@all = []
  attr_accessor :title
  attr_reader :author
  def author=(author)
    @author = author
    @author.posts << self
    Author.add_total
  end

def initialize(title)
  @title = title
  @@all << self
end

def self.all
  @@all
end

def author_name
  return nil if @author == nil
  @author.name
end
end
