class CreatePlanners < ActiveRecord::Migration[5.1]
  def change
    create_table :planners do |t|
      t.string :username
      t.string :password_digest
      t.string :personality
      t.string :reason
      t.boolean :international, :default => :false
      t.timestamps
    end
  end
end
