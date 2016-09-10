require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit new_user_path
    fill_in 'First name', :with => 'Dave'
    fill_in 'Last name', :with => 'Eggers'
    fill_in 'Email', :with => 'liamhellis@gmail.com'
    fill_in 'Password', :with => '8milero'
    fill_in 'Age', :with => '24'
    click_on 'Create User'
    expect(page).to have_content 'User successfully Added'
  end

  it "gives error when no name is entered" do
    visit new_user_path
    click_on 'Create User'
    expect(page).to have_content 'errors'
  end
end
