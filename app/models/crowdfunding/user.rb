
class User

  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    User.all << self
  end
  def self.all
    @@all
  end

  def new_project(name, amount_goal)
    Project.new(name, amount_goal, self)
  end
  def new_pledge(name, amount, project)
    Pledge.new(name, amount, project, self)
  end
  def all_pledges
    Pledge.all.select {|p| p.user == self}
  end
  

  def self.highest_pledge
    Pledge.all.max_by {|p| p.pledge_amount}
  end
  def self.multi_pledger
    all.find_all {|p| p.all_pledges.size > 1}
  end
  def self.project_creator
    Project.all.map {|p| p.user}.uniq
  end

end