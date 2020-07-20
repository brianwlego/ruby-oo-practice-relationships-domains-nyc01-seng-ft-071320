
class Project

  attr_accessor :project, :pledge_goal_amount, :user, :current_amount
  @@all = []
  def initialize(project, current_amount=0, pledge_goal_amount, user)
    @project = project
    @pledge_goal_amount = pledge_goal_amount
    @user = user
    @current_amount = current_amount
    Project.all << self
  end
  def self.all
    @@all
  end

  def all_pledges
    Pledge.all.select {|p| p.project == self}
  end
  def all_users
    all_pledges.map {|p| p.user}.uniq
  end

  def self.most_backers
    all.max_by {|p| p.all_pledges.length}
  end
  def self.above_goal
    all.select {|p| p.current_amount>p.pledge_goal_amount}
  end
  def self.no_pledges
    all.select {|p| p.current_amount == 0}
  end

end