require 'pry'
require_relative 'song.rb'
class Artist
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select{|songs| songs.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        name = Song.new(song)
        name.artist = self
    end

    def self.song_count
        Song.all.length
    end
end
