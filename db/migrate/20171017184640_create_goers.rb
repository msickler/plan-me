class CreateGoers < ActiveRecord::Migration[5.1]
  def change
    create_table :goers do |t|
      t.string :email
      t.string :password_digest
      t.string :personality
      t.string :reason
      t.integer :budget
      t.integer :companion
      t.boolean :international, :default => :false
      t.timestamps
    end
  end
end
