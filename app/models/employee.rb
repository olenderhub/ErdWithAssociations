class Employee < ActiveRecord::Base
  has_and_belongs_to_many :companies

  validates :companies, presence: true
end
