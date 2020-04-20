class Artist
    attr_accessor :name, :songs
    attr_reader :songs
    #@@song_count = []
      

    def initialize(name)
        @name = name
        @songs = []
    end
    
    
    def songs
      Song.all.select {|song| song.artist = self}
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def self.song_count
        song_count =+ 3
    end
end