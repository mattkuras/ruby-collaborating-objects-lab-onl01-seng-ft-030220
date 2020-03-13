require 'pry'
class Artist 
  
  attr_accessor :name, :songs 
  @@all = []
  @@songs = []
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
   def add_song(song)
     song.artist = self 
    #  @@songs << song
 #    binding.pry 
   end 
    
   def songs 
    Song.all.select {|song| song.artist == self}
   end
   
   def self.find_or_create_by_name(string)
     
      Artist.all.each do |artist|
       
       if artist && artist.name == string
          binding.pry
         return artist 
       else
         self.new(string)
     end
   end
  end 
     

    
  
end