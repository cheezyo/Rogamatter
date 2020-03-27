class AddCompanyIdToDeliveries < ActiveRecord::Migration[6.0]
  def change
    add_column :deliveries, :company_id, :integer
  end
end
