require 'pry'

class Listing 

    attr_accessor :name, :city
    @@all_listing = []

    def initialize(name, city)
    @name = name 
    @city = city 
    Listing.all << self 
    end 

    def self.all 
        @@all_listing 
    end 

    def guests 
        trips.map do |t| #select returns the entire instance, regardless of t.guest  
          t.guest
        end 
    end 

    def trips 
        Trip.all.select do |t|
         t.listing == self
        end 
    end 

    def trip_count
      trips.count
    end

    def self.find_all_by_city(city)
        all.select do |l|
          if l.city == city
            l
          end
        end
    end

    def self.most_popular
      count = 0
      most_popular = nil 
      all.each do |l|
        if l.trip_count > count 
          count = l.trip_count  
          most_popular = l 
        end 
      end 
        most_popular
    end


end 