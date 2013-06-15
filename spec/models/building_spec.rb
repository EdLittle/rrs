# == Schema Information
#
# Table name: buildings
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  description    :text
#  street_address :string(255)
#

require 'spec_helper'

describe Building do
	it "has a name which is a string" do
		building = Building.new
		building.name.should == nil
		building.id.should == nil
	end 	 
end
