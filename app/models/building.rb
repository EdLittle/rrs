# == Schema Information
#
# Table name: buildings
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  description    :text
#  street_address :string(255)
#

class Building < ActiveRecord::Base
  attr_accessible :name, :description, :street_address
  has_many :rooms, :dependent => :destroy
  validates :name, :presence => true, :uniqueness => true

  def avrs
  	self.rooms.where(:category_id => 5).count
  end

  def classrooms
  	self.rooms.where(:category_id => 1)
  end

  def faculty_offices
	self.rooms.where(:category_id => 6)
  end

  def labs
  	self.rooms.where(:category_id => 2)
  end

  def libraries
  	self.rooms.where(:category_id => 7)
  end

  def theaters
  	self.rooms.where(:category_id => 4)
  end

end
