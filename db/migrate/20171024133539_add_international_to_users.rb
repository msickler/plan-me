class AddInternationalToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :international, :string

  end
end
