require 'spec_helper'

describe Building do
	it "has a name which is a string" do
		building = Building.new
		building.name.should == nil
		building.id.should == nil
	end 	 
end
