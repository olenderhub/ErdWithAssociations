class Student < ActiveRecord::Base
  has_many :subjects, dependent: :destroy
  has_many :teachers, through: :subjects
end
