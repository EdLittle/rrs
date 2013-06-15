# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  building_id :integer
#  capacity    :integer
#  rate        :decimal(, )
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Room do
	before { @room = Room.new(
		name: "Test",
		capacity: 12,
		rate: 100.00,
		building_id: 1
		)
	}

	subject { @room }

	it { should respond_to(:name) }
	it { should respond_to(:building) }
	it { should respond_to(:capacity) }
	it { should respond_to(:rate) }
	it { should respond_to(:category) }

	it { should be_valid }


	describe "a room should have a building id" do
		before {@room.building_id = nil }

		it { should_not be_valid }
	end
end
