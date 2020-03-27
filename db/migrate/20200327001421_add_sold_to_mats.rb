class AddSoldToMats < ActiveRecord::Migration[6.0]
  def change
    add_column :mats, :sold, :integer
  end
end
