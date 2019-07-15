
class Artist 
  attr_accessor :name, :songs
  

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs 
    @songs 
  end
  
  def add_song 
    Song.artist = self 
  end

  
  
  
  
  
end



