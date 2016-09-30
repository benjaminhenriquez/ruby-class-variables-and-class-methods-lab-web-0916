class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@count= 0
  @@genres = []
  def self.count
    @@count
  end
  def self.genres
    @@genres.uniq
  end
  def self.artists
    @@artists.uniq
  end
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  def self.genre_count
    genre_count = @@genres.each_with_object(Hash.new(0)) {|genre, hash| hash[genre] += 1}
  end
  def self.artist_count
    artist_count = @@artists.each_with_object(Hash.new(0)) {|artist, hash| hash[artist] += 1}
  end

end
