require 'pry'

class Trip 

    attr_accessor :trip_name, :listing, :guest
    @@all_trip  = []

    def initialize(trip_name, listing, guest)
    @trip_name = trip_name
    @listing = listing
    @guest = guest 
    Trip.all << self 
    end 

    def self.all 
        @@all_trip 
    end 



end 