class CreateHorrorComments < ActiveRecord::Migration[6.1]
  def change
    create_table :horror_comments do |t|
      t.string :comment 
      t.integer :likes
      t.integer :horror_id
      t.timestamps
    end
  end
end
