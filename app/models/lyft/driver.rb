
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

  def total_distance
    rides.map {|r| r.distance}.sum.round(2)

    # should calculate the total distance the passenger has travelled with the service
  end

  def self.mileage_cap(distance)
    all.select {|d| d.total_distance > distance}
    
    # takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
  end








end




