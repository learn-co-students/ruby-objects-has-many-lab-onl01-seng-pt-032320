# Artist
#   #new
#     is initialized with a name (FAILED - 1)
#   #name
#     has an attr_accessor for name (FAILED - 2)
#   #songs
#     has many songs (FAILED - 3)
#   #add_song
#     takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist (FAILED - 4)
#   #add_song_by_name
#     takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 5)
#   .song_count
#     is a class method that returns the total number of songs associated to all existing artists (FAILED - 6)
require 'pry'

class Artist
  attr_accessor :name, :songs  # has an attr_accessor for name - #songs - has many songs

  def initialize(name)         #  is initialized with a name
    @name = name
  end

  def songs
    Song.all.select {|song| song.artist}   # songs - has many songs * you are calling the method self.all here in song.rb *
  end

  def add_song(song)                       # takes in an argument of a song and associates that song with the artist
    song.artist = self                     # by telling the song that it belongs to that artist
  end

  def add_song_by_name(song_name)          # takes in an argument of a song name, creates a new song with it and associates the song and artist
    artist = Song.new(song_name)
    add_song(artist)
  end

  def self.song_count          # .song_count - is a class method that returns the total number of songs associated to all existing artists
    Song.all.count #{|song| song.artist}
  end
end
