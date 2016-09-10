require 'rails_helper'

describe "the edit a category process" do
  it "edits a new category" do
    new_cat = Category.create(name: 'Leisure')
    visit '/'
    click_link "Browse by category"
    click_link "Leisure"
    click_link "Edit this category"
    fill_in 'Name', :with => 'Arts'
    click_on 'Update Category'
    expect(page).to have_content 'Category successfully updated'
  end
end
