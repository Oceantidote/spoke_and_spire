class AddSlugToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :slug, :string
    add_index :photos, :slug, unique: true
  end
end
