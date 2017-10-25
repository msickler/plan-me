class RemoveFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :budget, :integer
    remove_column :users, :companion, :integer

  end
end
