class CreateTrendingComments < ActiveRecord::Migration[6.1]
  def change
    create_table :trending_comments do |t|
      t.string :comment
      t.integer :likes 
      t.integer :trending_id
      t.timestamps
    end
  end
end
