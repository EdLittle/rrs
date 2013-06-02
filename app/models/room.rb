class Room < ActiveRecord::Base
  attr_accessible :name, :capacity, :rate, :description, :building_id
  belongs_to :building
end
