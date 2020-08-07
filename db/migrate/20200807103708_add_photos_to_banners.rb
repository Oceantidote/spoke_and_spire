class AddPhotosToBanners < ActiveRecord::Migration[6.0]
  def change
    add_reference :banners, :slide_one
    add_reference :banners, :slide_two
    add_reference :banners, :slide_three
    add_reference :banners, :card_one
    add_reference :banners, :card_two
    add_reference :banners, :card_three


    add_foreign_key :banners, :photos, column: :slide_one_id, primary_key: :id
    add_foreign_key :banners, :photos, column: :slide_two_id, primary_key: :id
    add_foreign_key :banners, :photos, column: :slide_three_id, primary_key: :id
    add_foreign_key :banners, :photos, column: :card_one_id, primary_key: :id
    add_foreign_key :banners, :photos, column: :card_two_id, primary_key: :id
    add_foreign_key :banners, :photos, column: :card_three_id, primary_key: :id
  end
end
