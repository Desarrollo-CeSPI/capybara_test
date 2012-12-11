require_relative 'test_helper'

class LoginTest < Test::Unit::TestCase
  def test_sign_in_with_a_user_with_admin_credentials_must_respond_correctly
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