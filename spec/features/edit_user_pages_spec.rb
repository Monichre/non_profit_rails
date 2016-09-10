require 'rails_helper'

describe "the edit a category process" do
  it "edits a new category" do
    new_user = User.create(first_name: "Liam", last_name: "Ellis", email: "liamhellis@gmail.com", password: "8milero", age: "29")
    visit edit_user_path(new_user)
    fill_in 'First name', :with => 'Barry'
    fill_in 'Last name', :with => 'Goldman'
    fill_in 'Password', :with => '8milero'
    click_on 'Update User'
    expect(page).to have_content 'User successfully updated'
  end
end
