class PaymentHistory < ActiveRecord::Base
  RATINGS = (1..10)
  belongs_to :payment

  validates :credit_rating, inclusion: { in: RATINGS }
  validates :payment, presence: :payment
end
