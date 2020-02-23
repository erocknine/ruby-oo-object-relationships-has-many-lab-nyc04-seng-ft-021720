require 'pry'
require_relative 'post.rb'
class Author
    attr_accessor :name, :title, :author

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select{|posts| posts.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        name = Post.new(title)
        name.author = self
    end

    def self.post_count
        Post.all.length
    end
end