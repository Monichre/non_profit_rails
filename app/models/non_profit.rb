class NonProfit < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  ##validates :name, presence: true, allow_nil: false, allow_blank: false
  validates :encrypted_password, presence: true, allow_nil: false, allow_blank: false
  has_and_belongs_to_many :users
  has_and_belongs_to_many :categories
end
