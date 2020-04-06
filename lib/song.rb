class Song
  attr_accessor :artist, :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def artist_name
    if self.artist == nil
      return nil
    else
      @artist.name
    end
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end