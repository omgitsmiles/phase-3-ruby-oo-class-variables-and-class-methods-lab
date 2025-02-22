class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each {|genre| genre_count[genre] = (genre_count[genre] || 0) + 1}
        genre_count
    end

    def self.artist_count
        artists_songs = {}
        @@artists.each { |artist| artists_songs[artist] = (artists_songs[artist] || 0) + 1}
        artists_songs
    end
end