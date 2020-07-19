require_relative './movie.rb'
require_relative './show.rb'
require_relative './actor.rb'
require_relative './character.rb'
require 'pry'


########################################

# Instances to play around with

mark = Actor.new("Mark Hammill")
harrison = Actor.new("Harrison Ford")
carrie = Actor.new("Carrie Fisher")
leo = Actor.new("Leonardo DiCaprio")
kate = Actor.new("Kate Winslet")
steve = Actor.new("Steve Carell")
tina = Actor.new("Tina Fey")

luke = mark.add_character("Luke Skywalker")
han = harrison.add_character("Han Solo")
leia = carrie.add_character("Princess Leia")
jack = leo.add_character("Jack")
rose = kate.add_character("Rose")
michael = steve.add_character("Michael Scott")
john = steve.add_character("John Du Pont")
liz = tina.add_character("Liz Lemon")


star_wars1 = luke.add_movie("Star Wars")
star_wars2 = han.add_movie("Star Wars")
star_wars3 = leia.add_movie("Star Wars")
titanic1 = jack.add_movie("Titanic")
titanic2 = rose.add_movie("Titanic")
foxcatcher = john.add_movie("Foxcatcher")
the_office = michael.add_show("The Office")
thirty_rock = liz.add_show("30 Rock")
thirty_rock_movie = liz.add_movie("30 Rock The Movie")








binding.pry