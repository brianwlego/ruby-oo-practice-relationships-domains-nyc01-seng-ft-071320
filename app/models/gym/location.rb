
class Location

  attr_accessor :place
  
  @@all = []
  
  def initialize(place)
    @place = place
    Location.all << self
  end
  def self.all
    @@all
  end
  
  def sessions
    Session.all.select {|s| s.location_instance == self}
  end
  def trainers
    sessions.map {|s| s.trainer_instance}
  end
  def self.least_clients
    result = nil
    num = 100
    all.select do |l|
      l.trainers.select do |t|
        if t.clients.count < num
          num = t.clients.count
          result = l 
        end
      end
    end
    result
  end
  
  
  
  
  
  
  
  end