require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def songs
    Song.all
  end
  def self.all
    @@all
  end
  def add_song(song)
    song.artist = self
  end
  def add_song_by_name(name_of_song)
    new_song, new_song.artist = Song.new(name_of_song), self
  end
  def self.song_count
    Song.all.length
    # binding.pry
  end
end
