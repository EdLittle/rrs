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
   @user = User.new(username: "someusername", first_name: "First Name", last_name: "Last Name", email: "user@example.com", password: "password", password_confirmation: "password")
  end

  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:last_name) }
  it { should respond_to(:first_name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }
  it { should respond_to(:remember_token) }

  it { should be_valid }

  describe "when username is not present" do
  	before { @user.username = " " }
  	
  	it { should_not be_valid }
  end

  describe "when password is not present" do
    before { @user.password = @user.password_confirmation = " " }
    
    it { should_not be_valid }
  end

  describe "when password and password confirmation do not match" do
    before { @user.password_confirmation = "not the same" }

    it { should_not be_valid }
  end

  describe "when the password confirmation is nil" do
    before { @user.password_confirmation = nil }

    it { should_not be_valid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by_email(@user.email) }

    describe "with valid password" do
      it { should == found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not == user_for_invalid_password }
      specify { user_for_invalid_password.should be_false }
    end
  end

  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
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
