class CreateActionComments < ActiveRecord::Migration[6.1]
  def change
    create_table :action_comments do |t|
      t.string :comment
      t.integer :likes 
      t.integer :action_id
      t.timestamps
    end
  end
end
