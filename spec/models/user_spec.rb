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
  before do
   @user = User.new(username: "someusername", first_name: "First Name", last_name: "Last Name", email: "user@example.com")
  end

  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:last_name) }
  it { should respond_to(:first_name) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "when username is not present" do
  	before { @user.username = " " }
  	
  	it { should_not be_valid }
  end

  describe "when username exceeds 25" do 
  	before { @user.username = "a" * 26 }

  	it { should_not be_valid }
  end

  describe "when username length is less than 3 characters" do
  	before { @user.username = "aa" }

  	it {should_not be_valid }
  end

  describe "when username has a duplicate" do
  	before do
  		duplicate_username = @user.dup
  		duplicate_username.save
  	end

  	it { should_not be_valid }
  end

  describe "when email is not present" do 
  	before {@user.email = " "}

  	it { should_not be_valid }
  end

  describe "when email exceeds 50 characters" do 
  	before { @user.email = "a" * 51}

  	it { should_not be_valid } 
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
      end      
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end      
    end
  end

  describe "when last name is not present" do
  	before { @user.last_name = " " }

  	it { should_not be_valid }
  end
end
