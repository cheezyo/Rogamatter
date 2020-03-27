class ChangeNameInventory < ActiveRecord::Migration[6.0]
  def change
  	rename_column :mats, :inventroy, :inventory
  end
end
