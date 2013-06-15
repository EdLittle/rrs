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

require 'spec_helper'

describe User do
  before { @user = User.new(username: "someusername", first_name: "First Name", last_name: "Last Name", email: "user@example.com") }

  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:last_name) }
  it { should respond_to(:first_name) }
  it { should respond_to(:email) }

end
