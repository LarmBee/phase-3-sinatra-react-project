class CreateComedyComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comedy_comments do |t|
      t.string :comment 
      t.integer :likes
      t.integer :comedy_id
      t.timestamps
    end
  end
end
