class AddContentToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :content, :text
  end
end
