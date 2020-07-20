
class Session

  attr_accessor :s_name, :trainer_instance, :location_instance
  
  @@all = []
  
  def initialize(s_name, trainer_instance, location_instance)
    @s_name = s_name
    @trainer_instance = trainer_instance
    @location_instance = location_instance

    Session.all << self
  end
  def self.all
    @@all
  end
  
  
  
  
  
  
  
  
  end