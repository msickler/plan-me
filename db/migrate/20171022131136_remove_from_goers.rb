class RemoveFromGoers < ActiveRecord::Migration[5.1]
  def change
    remove_column :goers, :name, :string
    remove_column :goers, :email, :string
    remove_column :goers, :password_digest, :string
    remove_column :goers, :personality, :string
    remove_column :goers, :reason, :string
    remove_column :goers, :international, :boolean
  end
end
