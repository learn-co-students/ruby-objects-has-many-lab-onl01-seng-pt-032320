class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  @@song_count = 0

  def songs
    Song.all.select { |song|  song.artist == self }
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
