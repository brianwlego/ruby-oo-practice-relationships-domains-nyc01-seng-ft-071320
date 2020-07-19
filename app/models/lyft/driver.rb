
class Driver

  attr_accessor :driver

  @@all = []

  def initialize(driver)
    @driver = driver

    Driver.all << self
  end
  def self.all
    @@all
  end

  def passengers
    rides.map {|r| r.passenger}
    
    # returns all passengers a driver has had
  end

  def rides
    Ride.all.select {|r| r.driver == self}
    
    # returns all rides a driver has made
  end

  def self.mileage_cap(distance)
    Ride.all.map do |r|
      
    binding.pry
    end
    # takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
  end








end




