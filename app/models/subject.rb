class Subject < ActiveRecord::Base
  MARKS = (1..6)

  validates :mark, inclusion: { in: MARKS }
end
