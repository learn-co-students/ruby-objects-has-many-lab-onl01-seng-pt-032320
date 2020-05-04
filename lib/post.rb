class Post

  attr_accessor :name, :author, :title

@@all = [] #@@all here is an empty array
def initialize(title)
  @title = title
  @@all << self #The post class consist of all the post is being pushed in the @@all array which contains a list of posts
end

def self.all
  @@all
end
#^This class method displays all post instances in an array from @@all on line 6 above

def author_name
if self.author
  author.name
else
  nil
end

end

end
