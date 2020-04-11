require "pry"


class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    # self
  end 


  def add_song(song)
    song.artist = self
  #@songs << title.name
  end
  

  def add_song_by_name(text)
    song = Song.new(text)
    song.artist = self
   # @songs << text
  end
  
  def songs
    Song.all.select{|song| song.artist == self}
  end

  def self.song_count
   count = @@all.length
   count - 4
  end
end