class AddPlayerRefToSports < ActiveRecord::Migration
  def change
    add_reference :sports, :player, index: true, foreign_key: true
  end
end
