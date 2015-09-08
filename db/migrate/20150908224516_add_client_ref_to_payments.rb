class AddClientRefToPayments < ActiveRecord::Migration
  def change
    add_reference :payments, :client, index: true, foreign_key: true
  end
end
