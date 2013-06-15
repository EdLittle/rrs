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

class Room < ActiveRecord::Base
  attr_accessible :name, :capacity, :rate, :description, :building_id, :category_id
  belongs_to :building
  belongs_to :category

  validates :building_id, :presence => true
  validates :rate, :numericality => true
  validates :capacity, :numericality => true
end
