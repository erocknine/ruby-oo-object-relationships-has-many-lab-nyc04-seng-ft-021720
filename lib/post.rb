require_relative 'author.rb'

class Post

    attr_accessor :name, :author, :title

    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author.name if self.author
    end

end