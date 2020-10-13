class Song
    attr_accessor :name, :artist, :genre
    # attr_reader

    @@all = []
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@all << self
        @@count +=1
        @@genres << genre
        @@artists << artist
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

    def self.artist_count
        artists = @@artists
        artist_hash = {}
        artists.each{|artist| 
            if artist_hash[artist] == nil
                artist_hash[artist] = 0
            end
            artist_hash[artist] +=1
        }
        artist_hash
    end

    def self.genre_count
        genres = @@genres
        genre_hash = {}
        genres.each{|genre| 
            if genre_hash[genre] == nil
                genre_hash[genre] = 0
            end
            genre_hash[genre] +=1
        }
        genre_hash
    end

    def self.all
        @@all
    end
end