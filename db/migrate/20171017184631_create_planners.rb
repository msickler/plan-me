class CreatePlanners < ActiveRecord::Migration[5.1]
  def change
    create_table :planners do |t|

      t.timestamps
    end
  end
end
