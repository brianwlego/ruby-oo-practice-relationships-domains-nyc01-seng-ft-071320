
class Passenger

  attr_accessor :passenger, :distance

  @@all = []

  def initialize(passenger)
    @passenger = passenger

    Passenger.all << self
  end
  def self.all
    @@all
  end

  def drivers
    rides.map {|r| r.driver}

    # returns all drivers a passenger has ridden with
  end

  def rides
    Ride.all.select {|r| r.passenger == self}

    # returns all rides a passenger has been on
  end

  def total_distance
    rides.map {|r| r.distance}.sum.round(2)

    # should calculate the total distance the passenger has travelled with the service
  end

  def self.premium_members
    all.select {|p| p.total_distance > 100}
    # should find all passengers who have travelled over 100 miles with the service
  end


end