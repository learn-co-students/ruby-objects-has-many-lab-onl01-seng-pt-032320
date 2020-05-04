class Author
attr_accessor :name, :post

  def initialize(name)
    @name = name
  end

def posts
Post.all.select {|post| post.author == self} #Here we want to make sure the post.rb file has :author as attr_accessor
#The :author on the post.rb file is what is set up and links the post to this artist.rb file
#We iterate over the list of post and select the one that is associate or belongs to the Author and use the post.author to link them together
end




end
