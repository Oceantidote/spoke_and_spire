class AddTitleToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :title, :string
  end
end
