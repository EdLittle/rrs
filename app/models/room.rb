class Room < ActiveRecord::Base
  attr_accessible :name, :capacity, :rate, :description, :building_id, :category_id
  belongs_to :building
  belongs_to :category
end
