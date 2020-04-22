require 'pry'
class Artist
  
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song_obj)
    @songs << song_obj
    song_obj.artist = self
  end
  
#  def add_song_by_name(song_name)
#    binding.pry
# end
  
end