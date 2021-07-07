class Song
    
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        self.name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def artist_name
        return self.artist.name if self.artist != nil
    end
end