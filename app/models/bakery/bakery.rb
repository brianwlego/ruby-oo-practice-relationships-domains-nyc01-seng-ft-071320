
class Bakery

  attr_accessor :name

  @@all = []


  #Initializes with only 
  #the bakerys name

  def initialize(name)
    @name = name
    Bakery.all << self
  end
  def self.all
    @@all 
  end

  def ingredients
    Ingredient.all.select {|i| i.dessert_instance.bakery_instance == self}
    binding.pry
    #should return an array of 
    #ingredients for the bakery's 
    #desserts
  end

  def desserts
    Dessert.all.select {|d| d.bakery_instance == self}
    
    # should return an array of 
    # desserts the bakery makes
  end

  def average_calories
    d_cal_array = desserts.map {|d| d.calories}
    average_cals = (d_cal_array.sum)/d_cal_array.length
   
    # should return a number totaling 
    # the average number of calories 
    # for the desserts sold at this 
    # bakery
  end

  def shopping_list
    ingr_array_w_duplicates = desserts.map do |d|
      #binding.pry
      d.ingredients.map do |i|
        #binding.pry
        i.ingr_name
      end
    end
    #binding.pry
    final_string = ingr_array_w_duplicates.flatten!.uniq.join(" ").to_s

    # should return a string of names 
    # for ingredients for the bakery
  end


end

