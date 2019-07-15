
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

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self

  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.post_count
    Post.all.count
  end

end