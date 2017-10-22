class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :type
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :personality
      t.string :reason
      t.boolean :international, :default => :false
      t.timestamps
    end
  end
end
