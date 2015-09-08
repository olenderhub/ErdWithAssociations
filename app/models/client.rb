class Client < ActiveRecord::Base
  has_one :payment
  has_one :payment_history, through: :payment
end
