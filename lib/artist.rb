class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    

    def songs
        Song.all
    end

    def add_song(song)

        song.artist = self
    end

    def add_song_by_name(song_name)
       new_instance_of_song = Song.new(song_name)
       new_instance_of_song.artist = self

    end

    def self.song_count
        Song.all.count
    end
end