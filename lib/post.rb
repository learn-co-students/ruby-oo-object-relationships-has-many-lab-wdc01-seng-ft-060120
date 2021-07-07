class Post

    @@all = []

    attr_accessor   :author
    attr_reader     :title

    def initialize(title)
        @title = title
        self.class.all << self
    end

    def self.all
        @@all
    end

    def author_name
        return self.author.name if self.author != nil
    end


end