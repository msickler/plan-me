class AddNoteToTripCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :trip_categories, :note, :string
  end
end
