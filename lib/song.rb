class Song
  
  attr_accessor :title :genre :artist
  @@songs =[]
  
  def add_song_by_title=(title)
    
    @@songs << title
    
  end
  
  
end