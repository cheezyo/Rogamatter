class AddDeliveredToDelivery < ActiveRecord::Migration[6.0]
  def change
    add_column :deliveries, :delivered, :boolean
  end
end
