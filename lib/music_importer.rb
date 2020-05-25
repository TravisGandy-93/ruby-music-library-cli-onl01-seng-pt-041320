class MusicImporter
    attr_accessor :path
    
  def initialize(path)
      @path = path
  end 
  
  def files
      Dir["#{path}/**/*.mp3"].map{|file| file.slice(path.size + 1..file.size)}
  end 
  
  def self.import 
      files.each{|file| Song.create_from_filename(file)}
  end 

  
  
  
  
  
end 