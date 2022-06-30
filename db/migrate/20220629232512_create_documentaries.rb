class CreateDocumentaries < ActiveRecord::Migration[6.1]
  def change
    create_table :documentaries do |t|
      t.string :poster_path
      t.string :backdrop_path
      t.string :overview
      t.string :original_name
      t.string :name
      t.string :original_title
      t.string :title
    end
  end
end
