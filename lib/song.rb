require "pry"
class Song
    attr_accessor :name, :artist, :genre
    #Class Variables
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize (name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end
    #Class Methods
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.each_with_object(Hash.new(0)) do |genre, hash|
            hash[genre] += 1
        end
    end

    def self.artist_count
        @@artists.each_with_object(Hash.new(0)) do |artist, hash|
            hash[artist] += 1
        end
    end

end