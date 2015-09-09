class Employee < ActiveRecord::Base
  has_and_belongs_to_many :companies
  has_many :pictures, as: :imageable

  validates :companies, presence: true
end
