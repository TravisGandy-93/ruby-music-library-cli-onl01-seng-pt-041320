module Concerns::Findable
  # Module code here
    def self.find_by_name(search)
        self.all.find{|genre_or_artist| genre_or_artist.name == search}
    end 
    
    

end