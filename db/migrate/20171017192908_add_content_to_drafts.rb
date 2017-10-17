class AddContentToDrafts < ActiveRecord::Migration[5.1]
  def change
    add_column :drafts, :content, :text
  end
end
