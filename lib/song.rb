require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
    end

    def name
        @name
    end

    def name
        @name=name
    end

    def artist
        @artist
    end

    def genre
        @genre
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
        @@genres.each { |genre| genre_count[genre] = (genre_count[genre] || 0) + 1}
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each { |artist| artist_count[artist] = (artist_count[artist] || 0) + 1} 
        artist_count
    end

end

10.times do 
    $x = 10
end

p $x

binding.pry
"pls"

# class Song
#     attr_accessor :name, :artist, :genre

#     @@count = 0
#     @@artists = []
#     @@genres = []

#     def initialize(name, artist, genre)
#         @name = name
#         @artist = artist
#         @genre = genre
#         @@count += 1
#         @@artists << artist
#         @@genres << genre
#     end

#     def self.count
#         @@count
#     end

#     def self.artists
#         @@artists.uniq
#     end

#     def self.genres
#         @@genres.uniq
#     end

#     def self.genre_count
#         genre_count = {}
#         @@genres.each { |genre| genre_count[genre] = (genre_count[genre] || 0) + 1 }
#         genre_count
#     end

#     def self.artist_count
#         artists_songs = {}
#         @@artists.each { |artist| artists_songs[artist] = (artists_songs[artist] || 0) + 1 }
#         artists_songs
#     end
# end


# If genrecount[genre] is zero it will add 1 or if it already has any value, it will add 1 with it

# This is how || operator works . So in my code if there is no key-value pair for a certain genre result[gen] will evaluate to nil , 
# then  the || operator will ignore result[gen] and evaluate to 0.