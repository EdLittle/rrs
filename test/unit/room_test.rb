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

require 'test_helper'

class RoomTest < ActiveSupport::TestCase

	test "A room should belong to a building" do
		room = Room.new

		assert room.building == nil	
	end

	test "A room should have categories" do

	end
end
