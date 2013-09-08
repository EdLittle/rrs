require 'spec_helper'

describe "Authentication" do 
  subject { page }

  describe "signin page" do
    before { visit login_path }

    it { should have_content('Log in') }
    it { should have_title('Log in') } 
    it { should have_link('Sign up now!') }

    describe "when log in is invalid" do
      before { click_button "Log in" } 
      
      it { should have_selector('div.alert.alert-error', text: 'Invalid') } 
    end

    describe "when log in is valid" do
      let(:user) { FactoryGirl.create(:user) }

      before do
        fill_in "session_email", with: user.email
        fill_in "session_password", with: user.password
        click_button "Log in"
      end

      it { should have_title "Room Reservation System" }
      it { should have_link "Log out", href: logout_path }
      it { should_not have_link "Log in", href: login_path }
   
      describe "when logging out" do
        before { click_link "Log out" }

        it { should have_link("Log in") }
      end
    end
  end

  describe "sign up page should have title 'Sign up!'" do
    before { visit signup_path }

    it {should have_title('Sign up!')}
  end
end