module Concerns::Findable
  # Module code here
    def self.find_by_name(search)
        self.all.find{|genre_or_artist| genre_or_artist.name == search}
    end 
    
    def self.find_or_create_by_name(search)
      self.find_by_name(search) ? (search = self.find_by_name(search)) : self.create(search)
    end 

end