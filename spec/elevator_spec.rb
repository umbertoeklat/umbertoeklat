# elevator_spec.rb
require 'elevator'
#require 'building'

describe Elevator, "#floors" do
  before(:each) do
    @elevator = Elevator.new
	#@elevator.enabled = true
  end
  
  #after(:each) do
  
  it "returns number of floors" do
	@elevator.floors = 1
	@elevator.floors.should_not eq(0)	
  end
  
  it "returns if ENABLED " do
    #@elevator.enabled = true
	puts @elevator.enabled
    @elevator.enabled.should be_true
  end
  
  subject { @elevator.enabled }
  it {should be_true} 
  
  it {should have max load capacity}
end

#describe Building, "#levels" do
#  it "should have " do
#    bldg = Bldg.new
#	bldg.should be_an_instance_of Bldg
#  end

#end