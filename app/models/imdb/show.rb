
class Show

  attr_accessor :show, :character_instance

  @@all = []

  def initialize(show, character_instance)
    @show = show
    @character_instance = character_instance
    Show.all << self
  end
  def self.all
    @@all
  end

  def on_the_big_screen
    result = Movie.all.select do |m|
        if m.movie.include? self.show
          m
        end
      end
    if result == []
      "Sorry this show doesn't have any movies with the same title"
    else
      result
    end

    # should return Movies that share the same name as this Show
  end

end