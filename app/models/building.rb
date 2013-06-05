class Building < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :rooms
  validates :name, :presence => true
end
