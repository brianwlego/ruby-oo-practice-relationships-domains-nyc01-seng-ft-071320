require 'pry'

class Guest 

    attr_accessor :name 
    @@all_guest  = []

    def initialize(name)
    @name = name  
    Guest.all << self 
    end 

    def self.all 
        @@all_guest 
    end 

    def trips
      Trip.all.select {|t| t.guest == self}
    end
    
    def listings
      trips.map {|t| t.listing}
    end

    def trip_count
      trips.count
    end

    def self.pro_traveller
        all.select do |g|
          if g.trip_count >= 1
              g
          end 
        end
    end 

    def self.find_all_by_name(name)
        all.select do |g|
            g.name.include? name
        end 
    end

end 