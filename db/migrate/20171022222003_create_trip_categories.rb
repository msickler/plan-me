class CreateTripCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_categories do |t|
      t.integer :trip_id
      t.integer :category_id
      t.timestamps null: false
    end
  end
end
