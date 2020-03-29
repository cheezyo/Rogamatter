class AddPriceAndDeliveryPriceToCompanyMats < ActiveRecord::Migration[6.0]
  def change
    add_column :company_mats, :delivery_price, :decimal
    add_column :company_mats, :contract_price, :decimal
  end
end
