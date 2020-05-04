class Author
attr_accessor :name, :title

  def initialize(name)
    @name = name
  end

def posts
Post.all.select {|post| post.author == self} #Here we want to make sure the post.rb file has :author as attr_accessor
#The :author on the post.rb file is what is set up and links the post to this artist.rb file
#We iterate over the list of post and select the one that is associate or belongs to the Author and use the post.author to link them together
end

def add_post(post)
post.author = self
#^Here we are telling taking the post argument and use it with author method and teeling it belong to the Author class by assigning it to self



end

def add_post_by_title(title_name)
letter = Post.new(title_name)
add_post(letter)
end

def self.post_count
Post.all.count
end


end
