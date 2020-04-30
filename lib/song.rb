# Song
#   #new
#     is initialized with an argument of a name
#     pushes new instances into a class variable called @@all upon initialization
#   @@all
#     is a class variable set to an array
#   .all
#     is a class method that returns an array of all song instances that have been created
#   #name
#     has a name
#   #artist
#     belongs to an artist
#   #artist_name
#     knows the name of its artist
#     returns nil if the song does not have an artist

class Song

  attr_accessor :name, :artist      #name - has a name, #artist - belongs to an artist

  @@all = []                        # @@all - is a class variable set to an array

  def initialize(name)              # #new - is initialized with an argument of a name
    @name = name                    #      - pushes new instances into a class variable called @@all upon initialization
    @@all << self
  end

  def self.all                      # .all -  is a class method that returns an array of all song instances that have been created
    @@all
  end

  def artist                        #artist - belongs to an artist
    @artist
  end

  def artist_name                     #artist_name - knows the name of its artist
    artist.name unless artist.nil?    # returns nil if the song does not have an artist
  end

end
