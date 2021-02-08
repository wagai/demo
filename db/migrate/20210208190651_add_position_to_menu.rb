class AddPositionToMenu < ActiveRecord::Migration[6.1]
  def change
    add_column :menus, :position, :integer, null: false, default: :id || 0
    add_index :menus, :position
  end
end
