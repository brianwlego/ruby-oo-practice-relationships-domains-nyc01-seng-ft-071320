

class Character

  attr_accessor :char_name, :actor_instance

  @@all = []

  def initialize (char_name, actor_instance)
    @char_name = char_name
    @actor_instance = actor_instance
    Character.all << self
  end
  def self.all
    @@all
  end

  def add_movie(mov_name)
    Movie.new(mov_name, self)
  end
  def add_show(show_name)
    Show.new(show_name, self)
  end

  def self.most_characters
    array_1 = Movie.all.map {|m| m.character_instance.char_name}
    array_2 = Show.all.map {|s| s.character_instance.char_name}
    hash = array_1.concat(array_2).each_with_object(Hash.new(0)) {|word,counts| counts[word] += 1 }
    result = hash.max_by {|k, v| v}
    result[0]

    # should return which character of film/television appears in the most films or tv shows
  end



end