class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.string :name
      t.string :title
      t.string :original_title
      t.string :original_name
      t.string :overview
      t.string :backdrop_path
      t.string :poster_path
    end
  end
end
