
class Actor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    
    Actor.all << self
  end
  def self.all
    @@all
  end

  def add_character(char_name)
    Character.new(char_name, self)
  end
  
  def self.most_characters
    array = Character.all.map {|c|c.actor_instance.name}
    hash = array.each_with_object(Hash.new(0)) {|word,counts| counts[word] += 1 } 
    result = hash.max_by {|k, v| v}
    result[0]
    
    # should return which actor who has played the most characters. (probably meryl streep)
  end


end