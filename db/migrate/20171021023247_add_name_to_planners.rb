class AddNameToPlanners < ActiveRecord::Migration[5.1]
  def change
    add_column :planners, :name, :string
  end
end
