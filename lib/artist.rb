require 'song.rb'

class Artist

  attr_accessor :name

  def initialize(name)
    #set name and initialize empty array of songs
    @name = name
    @songs = []
  end

  def add_song(song)
    #call song#artist method  to make song belong to artist
    song.artist = self
  end

  def add_song_by_name(name)
    #create new song with name and call add_song on song
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    #count elements in array returned by class method Song.all
    Song.all.count
  end

  def songs
    #return the artist's array of songs
    @songs
  end
end
