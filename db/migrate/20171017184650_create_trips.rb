class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.integer :goer_id
      t.string :name
      t.timestamps
    end
  end
end
