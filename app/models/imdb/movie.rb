require 'pry'

class Movie

  attr_accessor :movie, :character_instance

  @@all = []
  
  
  def initialize(movie, character_instance)
    @movie = movie
    @character_instance = character_instance
    Movie.all << self
  end
  def self.all
    @@all
  end
  
  def characters
    Movie.all.select do |m|
      if m.movie == self.movie
        m.character_instance
      end
    end
  end

  def self.most_actors
    array = all.map {|m| m.movie}
    hash = array.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    result = hash.max_by {|k, v| v}
    result[0]
    
    # should return the movie which has the most actors in it. this is so the studio knows never to hire that director again because he/she makes expensive movies
  end



end

