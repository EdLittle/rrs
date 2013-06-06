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

  test "Building description is not a required field" do
    building = Building.new
    building.name = "Test"
    building.description = ""
    assert building.save
  end

  test "Building has many rooms" do
    building = Building.create
    rooms = building.rooms
    assert rooms.empty?
  end

  test "Building should have unique name" do
    building = Building.create(:name => "building")
    assert !Building.create(:name => "building")
  end

end
