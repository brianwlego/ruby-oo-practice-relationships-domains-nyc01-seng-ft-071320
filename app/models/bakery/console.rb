require_relative './ingredient.rb'
require_relative './dessert.rb'
require_relative './bakery.rb'
require 'pry'



######################################

# Instances to play with

pret = Bakery.new("Pret")
magnolia = Bakery.new("Magnolia")


choc_chip_cookies = Dessert.new("Chocolate Chip Cookies", magnolia)
choc_cake = Dessert.new("Chocolate Cake", magnolia)
apple_pie = Dessert.new("Apple Pie", magnolia)
choc_cupcakes = Dessert.new("Chocolate Chip Cupcakes", pret)
danish = Dessert.new("Danish", pret)
choc_pie = Dessert.new("Chocolate Pie", pret)


sugar = Ingredient.new("Sugar", choc_chip_cookies, 20)
sugar2 = Ingredient.new("Sugar", choc_cake, 20)
sugar3 = Ingredient.new("Sugar", choc_cupcakes, 20)
sugar4 = Ingredient.new("Sugar", apple_pie, 20)
sugar5 = Ingredient.new("Brown Sugar", danish, 20)
sugar6 = Ingredient.new("Sugar", choc_pie, 20)
apple = Ingredient.new("Apple", apple_pie, 15)
flour = Ingredient.new("Flour", choc_cupcakes, 8)
butter = Ingredient.new("Butter", choc_chip_cookies, 30)
butter1 = Ingredient.new("Butter", choc_cake, 30)
butter2 = Ingredient.new("Butter", choc_cupcakes, 30)

########################################################






binding.pry