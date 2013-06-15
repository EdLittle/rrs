# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  email      :string(255)
#  first_name :string(255)
#  last_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :username, :password, :password_confirmation

  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, :presence => true, :length => {:maximum => 25, :minimum => 3 }, :uniqueness => true
  validates :email, :presence => true, :length => {:maximum => 50}, :uniqueness => true, :format => { with: VALID_EMAIL_REGEX}
  validates :last_name, :presence => true
  validates :password, :length => { :minimum => 6 }
  validates :password_confirmation, presence: true

end
