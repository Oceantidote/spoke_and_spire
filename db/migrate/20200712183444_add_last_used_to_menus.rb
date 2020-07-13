class AddLastUsedToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :last_used, :datetime
  end
end
