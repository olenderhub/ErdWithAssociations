class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  validates :imageable, presence: true
end
