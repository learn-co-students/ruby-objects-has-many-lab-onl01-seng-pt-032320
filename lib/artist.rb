class Artist

  attr_accessor :name
  attr_reader :songs

  @@total = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self

  end

def add_song_by_name(song_name)
  song = Song.new(song_name)
  self.add_song(song)
end

def self.song_count
  @@total
end

def self.add_total
  @@total += 1
end
end
