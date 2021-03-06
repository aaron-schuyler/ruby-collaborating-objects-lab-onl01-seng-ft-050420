class Artist 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def add_song(song)
    song.artist = self
  end
  def songs
    Song.all.select {|song| song.artist == self}
  end
  def self.find_or_create_by_name(name)
   temp = @@all.find {|artist| artist.name = name} 
   if temp
     return temp
   else
     self.new(name)
   end
  end 
  def print_songs
    Song.all.select {|song| song.artist == self}.each do |song|
      puts song.name
    end
  end
end
