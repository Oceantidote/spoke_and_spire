class AddMorePhotosToBanner < ActiveRecord::Migration[6.0]
  def change
    add_reference :banners, :slide_four
    add_column :banners, :slide_four_title, :string
    add_foreign_key :banners, :photos, column: :slide_four_id, primary_key: :id
  end
end
