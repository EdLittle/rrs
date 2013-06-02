require 'test_helper'

class BuildingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "new building should be nil" do
  	building = Building.new
	assert !building.nil?
  end

  test "Building should have name" do
  	building = Building.new
  	assert !building.save
  end

  test "Building has many rooms" do
    building = Building.create
    rooms = building.rooms
    assert rooms.empty?
  end

end
