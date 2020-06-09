class Artist 
    attr_reader :name
    

    def initialize(name)
        @name = name
         @songs = []    
    end 

    def songs
        Song.all.select {|song| song.artist == self}
    end 

    def add_song(song)
        @songs << song
        song.artist = self 
    end 
    def add_song_by_name(song)
       x = Song.new(song) 
       x.artist = self 
    end 

    def self.all
        @@songs
    end 

    def self.song_count
        Song.all.count
    end 


end 