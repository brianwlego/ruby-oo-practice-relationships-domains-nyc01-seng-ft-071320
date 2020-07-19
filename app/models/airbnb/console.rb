require_relative './guest.rb'
require_relative './listing.rb'
require_relative './trip.rb'
require 'pry'



two_bed = Listing.new('UWS-Two Bed', 'NYC') 
one_bed = Listing.new('UES', 'NYC') 
full_house = Listing.new('Harlem', 'NYC') 
apartment = Listing.new('MorningSideHeights', 'NYC') 
loft = Listing.new('dtla', 'Los Angeles') 


devin = Guest.new('Devin Benson') 
brian = Guest.new('Brian') 
joe = Guest.new('Joe')
kurt = Guest.new('Kurt') 
megan = Guest.new('Megan Benson')  

spring_break0 = Trip.new('SB2020', two_bed, devin)
spring_break1 = Trip.new('Sb1', full_house, joe)
spring_break2 = Trip.new('SB2', two_bed, kurt)
spring_break3 = Trip.new('SB3', apartment,joe)
spring_break4 = Trip.new('SB4', loft, megan)








binding.pry