class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @@count+=1
        @@genres.push(genre)
        @@artists.push(artist)
        @name=name
        @artist=artist
        @genre=genre
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
        send_back = {}
        @@genres.each do |genre|
            if send_back.keys.include?(genre)
                send_back[genre] += 1
            else
                send_back[genre] = 1
            end
        end
        send_back
    end
    def self.artist_count
        send_back = {}
        @@artists.each do |artist|
            if send_back.keys.include?(artist)
                send_back[artist] += 1
            else
                send_back[artist] = 1
            end
        end
        send_back
    end
end