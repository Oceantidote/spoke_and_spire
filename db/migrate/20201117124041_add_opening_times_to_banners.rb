class AddOpeningTimesToBanners < ActiveRecord::Migration[6.0]
  def change
    add_column :banners, :bar_week, :string
    add_column :banners, :bar_wknd, :string
    add_column :banners, :kitch_wk_wraps, :string
    add_column :banners, :kitch_wk_panini, :string
    add_column :banners, :kitch_wk_pizza, :string
    add_column :banners, :kitch_wknd_pizza, :string
  end
end
