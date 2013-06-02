require 'test_helper'

class RoomTest < ActiveSupport::TestCase

	test "A room should belong to a building" do
		room = Room.find(1)
		assert room.building.id == "980190969"		
	end

	test "A room should have categories" do

	end
end