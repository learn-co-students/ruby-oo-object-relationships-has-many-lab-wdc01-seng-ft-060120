class Artist
      
    attr_accessor :name

    def initialize(name)
        @name = name        
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        my_song = Song.new(name)
        self.add_song(my_song)
    end
    
    def self.song_count
        Song.all.length
    end

end