require 'rails_helper'

describe "the edit a non profit process" do
  it "edits a new non profit" do
    new_non_profit = NonProfit.create(name: "Mary's Place", email: "liamhellis@gmail.com", password: "8milero")
    visit '/'
    click_link "Mary's Place"
    click_link "Edit this non profit"
    fill_in 'Name', :with => 'Sharing and Caring Hands'
    click_on 'Update Non profit'
    expect(page).to have_content 'NonProfit successfully updated Sharing and Caring Hands Edit this non profit Back to non profits Back to categories'
  end
end
