# Author
#   #new
#     is initialized with a name (FAILED - 5)
#   #name
#     has an attr_accessor for name (FAILED - 6)
#   #posts
#     has many posts (FAILED - 7)
#   #add_post
#     takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 8)
#   #add_post_by_title
#     takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 9)
#   .post_count
#     is a class method that returns the total number of posts associated to all existing authors (FAILED - 10)


class Author
  attr_accessor :name, :posts   # #name - has an attr_accessor for name

  def initialize(name)          # #new - is initialized with a name
    @name = name
  end

  def posts                     # #posts - has many posts
    Post.all
  end

  def add_post(post)            #takes in an argument of a post and associates that post with the
    post.author = self          # author by telling the post that it belongs to that author
  end

  def add_post_by_title(post_title)  # takes in an argument of a post title,
    author = Post.new(post_title)    # creates a new post with it and associates the post and author
    add_post(author)
  end

  def self.post_count    # is a class method that returns the total number of posts associated to all existing authors
    Post.all.count
  end





end
