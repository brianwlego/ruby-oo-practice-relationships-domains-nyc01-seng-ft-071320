require_relative './client.rb'
require_relative './session.rb'
require_relative './location.rb'
require_relative './trainer.rb'
require 'pry'


########################################

jim = Trainer.new("Jim")
beth = Trainer.new("Beth")
paul = Trainer.new("Paul")

brian = Client.new("Brian", jim)
jefferson = Client.new("Jefferson", beth)
curt = Client.new("Curt", beth)

gold_gym = Location.new("Gold's Gym")
p_fitness = Location.new("Planet Fitness")
equinox = Location.new("Equinox")

sesh1 = Session.new("Sesh1", beth, gold_gym)
sesh2 = Session.new("Sesh2", jim, p_fitness)
sesh3 = Session.new("Sesh3", paul, p_fitness)
sesh4 = Session.new("Sesh4", paul, equinox)
sesh5 = Session.new("Sesh5", jim, gold_gym)
sesh6 = Session.new("Sesh6", beth, gold_gym)
sesh7 = Session.new("Sesh7", jim, gold_gym)











binding.pry