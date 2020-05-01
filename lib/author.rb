require 'pry'
class Author
attr_accessor :name

def initialize(name)
  @name = name
end

def posts
Post.all.select{|x| x.author == self}
end

def add_post(a_post)
a_post.author = self
end

def add_post_by_title(title)
title = Post.new(title)
add_post(title)
end

def self.post_count
Post.all.count
end

end
