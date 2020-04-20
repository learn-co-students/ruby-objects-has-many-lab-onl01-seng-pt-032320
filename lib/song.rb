class Song
  attr_accessor :artist, :name
 
 @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def artist_name
    if (self.artist != nil)
      return self.artist.name
    else 
      return self.artist
    end 
  end
  
end