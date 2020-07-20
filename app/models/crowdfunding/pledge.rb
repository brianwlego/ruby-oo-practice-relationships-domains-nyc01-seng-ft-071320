
class Pledge

  attr_accessor :pledge_amount, :project, :user
  attr_reader :pledge_name
  @@all = []
  def initialize(pledge_name, pledge_amount, project, user)
    @project = project
    @user = user
    @pledge_amount = pledge_amount
    @pledge_name = pledge_name
    add_pledge_amount_to_project
    Pledge.all << self
  end
  def self.all
    @@all
  end

  def add_pledge_amount_to_project
    self.project.current_amount += self.pledge_amount 
  end

end