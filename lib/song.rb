require 'artist.rb'
class Song

  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(name)
    #set name and add self to @@all
    @name = name
    @@all << self
  end

  def self.all
    #return @@all array (array of every song)
    @@all
  end
  
  def artist=(artist)
    #set artist and push self to artist's 'songs' array
    @artist = artist
    self.artist.songs << self 
  end

  def artist_name
    #if this song has an artist, return the name. otherwise nil
    self.artist ? self.artist.name : nil
  end
end

