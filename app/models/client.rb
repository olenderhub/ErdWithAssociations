class Client < ActiveRecord::Base
  has_one :payment
end
