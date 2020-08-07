class CreateBanners < ActiveRecord::Migration[6.0]
  def change
    create_table :banners do |t|
      t.string :slide_one_title
      t.string :slide_one_image_alt_text
      t.string :slide_two_title
      t.string :slide_two_image_alt_text
      t.string :slide_three_title
      t.string :slide_three_image_alt_text
      t.string :card_one_title
      t.string :card_one_image_alt_text
      t.string :card_two_title
      t.string :card_two_image_alt_text
      t.string :card_three_title
      t.string :card_three_image_alt_text

      t.timestamps
    end
  end
end
