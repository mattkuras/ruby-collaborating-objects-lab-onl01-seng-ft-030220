require 'pry'
class Song 
  
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def self.new_by_filename(filename)
   # binding.pry 
    song_info = filename.chomp(".mp3").split(" - ")
   # binding.pry 
    song = self.new(song_info[1])
  #  binding.pry 
    Artist.new(song_info[0])
    binding.pry 
    
  end
  
end