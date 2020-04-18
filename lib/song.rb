class Song
@@all = []
  attr_accessor :name
  attr_reader :artist
  def artist=(artist)
    @artist = artist
    @artist.songs << self
    Artist.add_total
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

def artist_name
  return nil if @artist == nil
  @artist.name
end


end
