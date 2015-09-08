class Payment < ActiveRecord::Base
  belongs_to :client
  has_one :payment_history

  validates :client, presence: true
end
