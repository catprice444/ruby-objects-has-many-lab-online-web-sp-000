class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

 def posts
   @posts
 end

 def add_post(post)
   self.posts << post
   post.author = self
   @@post_count +=1
 end

 def add_post_by_title(title)
   song = Song.new(name)
   self.songs << song
   song.artist = self
   @@song_count +=1
 end

end
