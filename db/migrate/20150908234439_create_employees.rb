class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :full_name

      t.timestamps null: false
    end
  end
end
