require 'pry'
class Song
  #binding.pry
  attr_accessor :artist, :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  #binding.pry
@@all
end

def artist_name
  #binding.pry
if self.artist #Here artist is the object and bringing artist with the method .name, we are converting it to the instance name of the artist
  #NOT the object. artist.name = "Drake"
 self.artist.name # calling the entire method
 else


end


end


end
