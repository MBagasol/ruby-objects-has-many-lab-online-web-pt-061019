
class Author 
  attr_accessor :name, :posts
  
  @@post_count = 1
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def post 
    @post 
  end
  
  def add_post(post) 
    @posts << post
    @@post_count +=1
    post.author = self 
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self

  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end

end