
class Dessert

  attr_accessor :dessert_name, :bakery_instance, :ingr_name

  @@all = []

  # Intializes with the desserts 
  # name and the bakery instances that 
  # dessert belongs to

  def initialize(dessert_name, bakery_instance)
    @dessert_name = dessert_name
    @bakery_instance = bakery_instance

    Dessert.all << self
  end
  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select {|i| i.dessert_instance == self}
    
    # should return an array of 
    # ingredients for the dessert
  end

  def calories
    ingredients.map {|i| i.calorie_count}.sum
    
    # should return a number totaling 
    # all the calories for all the 
    # ingredients included in that 
    # dessert
  end

end

