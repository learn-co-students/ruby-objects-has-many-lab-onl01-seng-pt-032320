class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
  end
  

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
  Song.all.select do |song| 
    song.artist == self 
    end 
 end 

  def self.song_count
  Song.all.length
  end
end

# class Artist
#   attr_accessor :name, :songs
#   def initialize(name)
#     @name = name 
#   end 
  
#   def songs
#   Song.all.select do |song|
#     song.artist == self
#   end 
# end 

# def add_song(song)
#   song.artist = self
# end 

# def add_song_by_name (song_name)
#   singer = Song.new(song_name)
#   add_song(singer)
# end 

# def self.song_count
#   Song.all.song
# end 

# end 
