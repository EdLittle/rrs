require 'test_helper'

class RoomTest < ActiveSupport::TestCase

	test "A room should belong to a building" do
		room = Room.new

		assert room.building == nil	
	end

	test "A room should have categories" do

	end
end