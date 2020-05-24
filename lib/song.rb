class Song 
  attr_accessor :name
  
  @@all = []
  def initialize(name, artist = nil, genre = nil)
      @name = name 
      if artist != nil
      self.artist= artist
		end
		  if genre != nil
      self.genre= genre
		end
  end 
  
  def self.all
      @@all 
  end 
  
  def save
      @@all << self 
  end 
  
  def self.destroy_all
      self.all.clear
  end 
  
  def self.create(song)
       song = self.new(song)
       song.save
       song
  end 
  
  def artist
      @artist
  end 
  
  def artist=(artist)
      @artist = artist
      artist.add_song(self)
  end 
  
  def genre=(genre)
		  @genre = genre
		  genre.add_song(self)
	end
	
	def genre 
	    @genre 
	end 
  
  def self.find_by_name(search)
      @@all.find{|artist| artist.name == search}
  end 
  
  def self.find_or_create_by_name(search)
      self.find_by_name ? (search = find_create) : self.new(search)
  end 

  
end 