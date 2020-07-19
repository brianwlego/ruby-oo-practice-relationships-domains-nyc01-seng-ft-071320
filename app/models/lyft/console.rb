require_relative './driver.rb'
require_relative './passenger.rb'
require_relative './ride.rb'
require 'pry'


######################################

# Initialized instance objects to play with

ben = Driver.new("Ben")
richard = Driver.new("Richard")
susan = Driver.new("Susan")

brian = Passenger.new("Brian")
jefferson = Passenger.new("Jefferson")
curtis = Passenger.new("Curtis")

ride1 = Ride.new(ben, brian, 12.8)
ride2 = Ride.new(ben, curtis, 2.3)
ride3 = Ride.new(susan, curtis, 11.0)
ride4 = Ride.new(richard, jefferson, 4.2)
ride5 = Ride.new(susan, jefferson, 5.0)
ride6 = Ride.new(richard, brian, 1.1)
ride7 = Ride.new(ben, brian, 3.5)







binding.pry
