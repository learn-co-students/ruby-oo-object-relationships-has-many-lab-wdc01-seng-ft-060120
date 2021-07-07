#for comments see artist and song. the structure is the same
require 'author.rb'
class Post

  attr_accessor :title
  attr_reader :author
  @@all = []

  def initialize(title)

    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author=(author)
    @author = author
    author.posts << self
  end

  def author_name
    self.author ? self.author.name : nil
  end
end
