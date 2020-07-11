class Artist

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @genre = genre
    save

  end

  def self.all
    @@all
  end

  def save
    @@all<<self
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    #self.songs.last
  end

  def genres
    Song.all.map{|song| song.genre == self}
  end

end
