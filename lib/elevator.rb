#elevator.rb

class Elevator
  attr_accessor :floors, :max_load, :allowed_floors,
                :cur_flr, :enabled	, :door
  
  def initialize (flrs, capacity, allowed_flrs, current, running, door_stat)
    self.floors = flrs
    self.max_load = capacity
	self.allowed_floors = allowed_flrs
	self.cur_flr = current
	self.enabled = running
	self.door = door_stat
  end

  
end
