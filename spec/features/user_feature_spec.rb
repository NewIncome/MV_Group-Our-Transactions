require 'rails_helper'

RSpec.feature "UserFeatures", type: :feature do  
  context 'not logged in' do
    it 'can load a login page' do
      visit login_path
      expect(page).to have_content 'LOGIN'
    end

    it 'can load a signup page' do
      visit signup_path
      expect(page).to have_content 'SIGNUP'
    end

    it 'show a home page' do
      visit root_path
      expect(page).to have_css('h1', text: 'Group Our Transactions')
    end

    it 'can create a new user' do
      visit signup_path
      fill_in 'Name', with: 'User'
      click_button 'Create User'
      expect(page).to have_content 'Account created successfully!'
    end

    it 'can log in a user' do
      create_user
      visit login_path
      fill_in 'Name', with: 'User01'
      click_button 'Log in'
      expect(page).to have_content 'you are logged in!'
    end
  end

  context 'logged in user' do
    it "can view it's own profile" do
      log_in
      expect(page).to have_css('a', text: 'All my transactions')
    end
  end
end
