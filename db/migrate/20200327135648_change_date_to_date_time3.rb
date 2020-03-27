class ChangeDateToDateTime3 < ActiveRecord::Migration[6.0]
  def change
  	  	change_column :deliveries, :delivered_date, :datetime
  end
end
