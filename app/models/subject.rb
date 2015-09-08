class Subject < ActiveRecord::Base
  MARKS = (1..6)
  belongs_to :teacher
  belongs_to :student

  validates :mark, inclusion: { in: MARKS }
  validates :student, :teacher, presence: true
end
