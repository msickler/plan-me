class RemoveFromPlanners < ActiveRecord::Migration[5.1]
  def change
    remove_column :planners, :name, :string
    remove_column :planners, :email, :string
    remove_column :planners, :password_digest, :string
    remove_column :planners, :personality, :string
    remove_column :planners, :reason, :string
    remove_column :planners, :international, :boolean
  end
end
