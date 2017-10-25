class AddToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :budget, :string
    add_column :users, :companion, :string

  end
end
