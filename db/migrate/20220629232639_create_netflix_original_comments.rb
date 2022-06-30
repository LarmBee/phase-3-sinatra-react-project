class CreateNetflixOriginalComments < ActiveRecord::Migration[6.1]
  def change
    create_table :netflix_original_comments do |t|
      t.string :comment 
      t.integer :likes
      t.integer :netflix_original_id
      t.timestamps
    end
  end
end
