class Artist
  attr_accessor :name

  @@song_count = 0


  def initialize(name)
    @name = name
    @songs = []
    # @@song_count +=1
  end

  def add_song(song)
    @songs << song
    song.artist = self
    # @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    # @@song_count +=1
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.select {|song| song.artist +=1}
  end
end
