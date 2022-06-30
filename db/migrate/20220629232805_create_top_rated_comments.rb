class CreateTopRatedComments < ActiveRecord::Migration[6.1]
  def change
    create_table :top_rated_comments do |t|
      t.string :comment 
      t.integer :likes
      t.integer :top_rated_id
      t.timestamps
    end
  end
end
