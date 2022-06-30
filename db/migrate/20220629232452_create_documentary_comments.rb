class CreateDocumentaryComments < ActiveRecord::Migration[6.1]
  def change
    create_table :documentary_comments do |t|
      t.string :comment 
      t.integer :likes
      t.integer :documentary_id
      t.timestamps
    end
  end
end
