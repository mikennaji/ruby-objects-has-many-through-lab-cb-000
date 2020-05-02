class Genre

attr_accessor :name, :songs

@@all = []

def initialize(name)
  @songs
  @name = name
  @@all << self

end

def self.all
  @@all
end

def songs
 Song.all.select{|song| song.genre ===self}
end

def artists
  songs.map{|song| song.artist}
end



end
