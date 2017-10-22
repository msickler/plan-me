class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :type
      t.string :uid
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :personality
      t.string :reason
      t.integer :budget
      t.integer :companion
      t.boolean :international
      t.timestamps
    end
  end
end
