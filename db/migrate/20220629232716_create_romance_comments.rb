class CreateRomanceComments < ActiveRecord::Migration[6.1]
  def change
    create_table :romance_comments do |t|
      t.string :comment 
      t.integer :likes
      t.integer :romance_id
      t.timestamps
    end
  end
end
