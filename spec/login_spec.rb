require_relative '../lib/capybara_config'
require_relative 'spec_helper'

describe "Login" do
  before do
    # before statements
  end

  describe "sign in with a user with admin credentials" do
    it "must respond correctly" do
      # let's get the main login page
      visit '/'
      
      # complete login form fields
      fill_in 'signin_username', with: 'admin'
      fill_in 'signin_password', with: 'admin'
      
      # click the submit button
      click_button 'Ingresar'
      
      # find the current logged in user link. If it doesn't exists then we couldn't get in
      page.has_selector? '#upperheader #user'
    end
  end
end

