require_relative './user.rb'
require_relative './project.rb'
require_relative './pledge.rb'
require 'pry'



#######################################

brian = User.new("Brian")
ian = User.new("Ian")
jenn = User.new("Jenn")
ben = User.new("Ben")


tech_proj = Project.new("Tech Project", 2000, brian)
school_proj = Project.new("School Project", 3500, brian)
movie_proj = Project.new("Movie Project", 1234, ian)
show_proj = Project.new("Show Project", 6000, jenn)
program_proj = Project.new("Programming Project", 200, brian)

pledge1 = Pledge.new("pledge1", 100, tech_proj, brian)
pledge2 = Pledge.new("pledge2", 10, tech_proj, ian)
pledge3 = Pledge.new("pledge3", 200, school_proj, jenn)
pledge4 = Pledge.new("pledge4", 123, show_proj, ben)
pledge5 = Pledge.new("pledge5", 321, tech_proj, brian)
pledge6 = Pledge.new("pledge6", 23, movie_proj, ian)
pledge7 = Pledge.new("pledge7", 15, movie_proj, brian)
pledge8 = Pledge.new("pledge8", 5, tech_proj, ben)
pledge9 = Pledge.new("pledge9", 1000, movie_proj, jenn)
pledge10 = Pledge.new("pledge10", 10000, show_proj, ian)







binding.pry