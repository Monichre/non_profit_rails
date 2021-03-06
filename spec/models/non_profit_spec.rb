require 'rails_helper'

RSpec.describe NonProfit, type: :model do

  ##it {should validate_presence_of :name}
  it {should validate_presence_of :email}
  it {should validate_presence_of :encrypted_password}
  it {should have_and_belong_to_many :users}
  it {should have_and_belong_to_many :categories}
end
