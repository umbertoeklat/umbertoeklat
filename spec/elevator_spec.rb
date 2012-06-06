# elevator_spec.rb
require 'elevator'
#require 'building'

describe Elevator, "#attributes" do
  before(:each) do
    @elevator = Elevator.new(10, 10, 0..9, 1, true, 'open')
	#@elevator.enabled = true
  end
  
  #after(:each) do
  
  it { @elevator.should be_an_instance_of(Elevator) }
  it "returns number of floors" do
	@elevator.floors = 1
	@elevator.floors.should_not eq(0)	
  end  
  
  it "returns if ENABLED " do
    #@elevator.enabled = true
	puts @elevator.enabled #sam
    @elevator.enabled.should be  #nil or bool
  end
  
  it "returns allowed floors :allowed_floors" do
    @elevator.allowed_floors.should respond_to(:hash )
	@elevator.allowed_floors.should be_a_kind_of(Range)
  end
  
  it "returns current floor" do
    @elevator.cur_flr.should be_a(Fixnum)
	@elevator.cur_flr.should be_an(Integer)
  end
  
  it "returns door status" do
    @elevator.door.should_not be_empty
  end
  
  subject { @elevator.enabled }
  it {should be_true} 
  
  it "should have max load capacity"
end

#describe Building, "#levels" do
#  it "should have " do
#    bldg = Bldg.new
#	bldg.should be_an_instance_of Bldg
#  end

#end