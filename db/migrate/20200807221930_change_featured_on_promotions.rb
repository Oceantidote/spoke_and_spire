class ChangeFeaturedOnPromotions < ActiveRecord::Migration[6.0]
  def change
    remove_column :promotions, :featured
    add_column :promotions, :featured, :boolean, default: true
  end
end
