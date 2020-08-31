require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
    end
    
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
        @@genres.each { |genre|
            if @@genre_count[:genre] == self.genres
                @@genre_count[:genre] += 1
            else @@genre_count[:genre] = 1
            end
    }
    end

    binding.pry

    def self.artist_count
        @@artists.each { |artist|
        @@artist_count[:artist] += 1
    }
    end

end