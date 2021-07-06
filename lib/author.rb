class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all.push(self)
    end

    def self.all
        @@all
    end

    def posts
        return Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    def self.post_count
        return Post.all.count
    end

end