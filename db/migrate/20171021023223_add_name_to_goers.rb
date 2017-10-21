class AddNameToGoers < ActiveRecord::Migration[5.1]
  def change
    add_column :goers, :name, :string
  end
end
