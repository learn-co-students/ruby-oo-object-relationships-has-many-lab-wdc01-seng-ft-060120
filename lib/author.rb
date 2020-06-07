class Author
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def posts
        Post.all
    end
    def add_post(post)

        post.author = self
    end

    def add_post_by_title(title_of_the_post)
        new_song_instance = Post.new(title_of_the_post)
        new_song_instance.author = self
    end

    def self.post_count
        Post.all.count
    end
end