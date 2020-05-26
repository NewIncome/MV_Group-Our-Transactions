require 'rails_helper'

RSpec.feature 'GroupFeatures', type: :feature do
  before do
    log_in
  end

  it 'renders a new group page' do
    visit new_group_url
    expect(page).to have_content 'NEW GROUP'
  end

  it 'can create a new group' do
    new_group
    expect(page).to have_content 'group created successfully!'
  end

  it 'shows a list of all the created groups' do
    visit groups_path
    expect(page).to have_content 'GROUPS'
  end

  it 'shows the details of a group' do
    new_group
    expect(page).to have_content 'DETAILS'
  end
end
