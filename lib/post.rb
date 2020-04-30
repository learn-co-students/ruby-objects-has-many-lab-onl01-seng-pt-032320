# Post
#   #new
#     is initialized with an argument of a title 
#     pushes new instances into a class variable called @@all upon initialization
#   @@all
#     is a class variable set to an array
#   .all
#     is a class method that returns an array of all post instances that have been created
#   #title
#     has a title
#   #author
#     belongs to an author
#   #author_name
#     knows the name of its author
#     returns nil if the post does not have an author

class Post
  attr_accessor :title, :author         #  has a title, belongs to an author,

  @@all = []                            # @@all - is a class variable set to an array

  def initialize(title)                 # #new - is initialized with an argument of a title
    @title = title                      # pushes new instances into a class variable called @@all upon initialization
    @@all << self
  end

  def self.all                          #.all - is a class method that returns an array of all post instances that have been created
    @@all
  end

  def author_name
    author.name unless author.nil?      #knows the name of its author
  end                                   # returns nil if the post does not have an author
end
