
class Ride
  attr_accessor :driver, :passenger, :distance
  @@all = []
  def initialize(driver, passenger, distance=0.0)
    @driver = driver
    @passenger = passenger
    @distance = distance
    Ride.all << self
  end
  def self.all
    @@all
  end

  def self.average_distance
    (all.map {|r| r.distance}.sum)/all.length
    # should find the average distance of all rides
  end

end