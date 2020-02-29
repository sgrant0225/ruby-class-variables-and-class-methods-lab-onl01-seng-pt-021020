require 'pry'

class Song  

attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []  #returns an array of all the artists
  @@genres = []
  
def initialize(song_name, artist_name, song_genre)
  @name = song_name
  @artist = artist_name
  @genre = song_genre
  @@count += 1
  
  @@artists << artist_name
  @@genres << song_genre
end 

 def self.count
   @@count 
 end
 
def self.artists
  @@artists.uniq
 end
 
 def self.genres
   @@genres.uniq
 end
 
 def self.genre_count
  genre_count_hash = {}
  @@genres.each do |genre| 
    if 
      genre_count_hash[genre]
      genre_count_hash[genre] += 1 
      else 
        genre_count_hash[genre] = 1
    end
  end
  genre_count_hash
 end

def self.artist_count
  artist_count_hash = {}
  @@artists.each do |artist| 
    if 
      artist_count_hash[artist]
      artist_count_hash[artist] += 1 
    else
      artist_count_hash[artist] = 1
     end
    end
     artist_count_hash
  end
 end  