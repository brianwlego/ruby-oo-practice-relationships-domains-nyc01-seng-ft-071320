
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
    all_distances = all.map {|r| r.distance}
    result = (all_distances.sum)/all_distances.length

    # should find the average distance of all rides
  end



end