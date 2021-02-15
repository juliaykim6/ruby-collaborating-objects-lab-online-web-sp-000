class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(name)
    song = name.split(" - ")[1]
    artist = name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song 
  end


end
