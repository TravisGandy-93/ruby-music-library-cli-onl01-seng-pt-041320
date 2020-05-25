class MusicImporter
    attr_accessor :path
    
  def initialize(path)
      @path = path
  end 
  
  def files
      Dir["#{path}/**/*.mp3"].map{|file| file.slice(path.size + 1..file.size)}
  end 
  def self.import 
      self.files.each{|file| Song.new_by_filename(file)}
  end 

  
  
  
  
  
end 