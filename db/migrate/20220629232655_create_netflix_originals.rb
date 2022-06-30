class CreateNetflixOriginals < ActiveRecord::Migration[6.1]
  def change
    create table :netflix_originals do |t|
      t.string :name
      t.string :poster_path
      t.string :backdrop_path
      t.string :overview
      t.string :original_name
      t.string :original_title
      t.string :title
    end
  end
end
