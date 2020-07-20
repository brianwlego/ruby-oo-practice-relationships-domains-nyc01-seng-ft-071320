

class Client

  attr_accessor :c_name, :trainer_instance

  @@all = []

  def initialize(c_name, trainer_instance)
    @c_name = c_name
    @trainer_instance = trainer_instance
    Client.all << self
  end
  def self.all
    @@all
  end

  def assign_trainer(new_trainer)
    self.trainer_instance = new_trainer
    binding.pry
  end







end