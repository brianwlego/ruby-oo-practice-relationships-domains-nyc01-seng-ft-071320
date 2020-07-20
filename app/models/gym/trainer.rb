
class Trainer

attr_accessor :t_name

@@all = []

def initialize(t_name)
  @t_name = t_name
  Trainer.all << self
end
def self.all
  @@all
end

def sessions
  Session.all.select {|s| s.trainer_instance == self}
end
def locations
  sessions.map {|s| s.location_instance}
end
def clients
  Client.all.select {|c| c.trainer_instance == self}
end
def self.most_clients
  result = nil
  num = 0
  all.select {|t| num = t.clients.count result = t if t.clients.count > num}
  result
end







end