class AddSoldToMops < ActiveRecord::Migration[6.0]
  def change
    add_column :mops, :sold, :integer
    add_column :mops, :inventory, :integer
    rename_column :mops, :name, :type
  end
end
