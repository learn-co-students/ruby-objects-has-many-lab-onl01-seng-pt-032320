class Artist 
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def songs
    Song.all.select { |song_name|
      song_name.artist == self
    }
  end
  
  def add_song(song_name)
    song_name.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
end