class AddTodayToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :today, :boolean, default: false
  end
end
