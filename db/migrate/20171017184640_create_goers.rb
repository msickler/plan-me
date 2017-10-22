class CreateGoers < Users
  def change
    create_table :goers do |t|
      t.integer :budget
      t.integer :companion
      t.timestamps
    end
  end
end
