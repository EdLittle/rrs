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
  	assert building.name.nil?
  end

end
