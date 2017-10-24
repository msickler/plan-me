class RemoveInternationalFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :international, :boolean
  end
end
