class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :full_name
      t.references :manager, index: true

      t.timestamps null: false
    end
  end
end
