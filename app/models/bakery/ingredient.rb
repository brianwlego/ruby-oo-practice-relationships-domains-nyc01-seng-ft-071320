
class Ingredient

  attr_accessor :ingr_name, :dessert_instance, :calorie_count

  @@all = []

  #Intializes with the ingredients name and the dessert instance that ingredient belongs to. Also intializes with a number of calories

  def initialize(ingr_name, dessert_instance, calorie_count)
    @ingr_name = ingr_name
    @dessert_instance = dessert_instance
    @calorie_count = calorie_count

    Ingredient.all << self
  end
  def self.all
    @@all
  end

  def dessert
    self.dessert_instance
    
    # should return a dessert object 
    # for that ingredient
  end

   def bakery
    self.dessert_instance.bakery_instance
    
    # should return the bakery object 
    # for the bakery that uses that 
    # ingredient
   end

  def self.find_all_by_name(name_of_ingredient)
    ingr_array = []
    all.map do |i| 
       if i.ingr_name.include? name_of_ingredient 
        i.ingr_name
        ingr_array << i.ingr_name
       end
    end
    ingr_array
  end
  
  ##################################
  # - .find_all_by_name('chocolate') 
  # might return ['chocolate sprinkles',
  # 'chocolate mousse', 'chocolate']
  # - make sure you aren't just looking 
  # for exact matches (like 'chocolate' 
  # =='chocolate')








end






