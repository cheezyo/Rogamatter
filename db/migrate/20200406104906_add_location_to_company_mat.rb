class AddLocationToCompanyMat < ActiveRecord::Migration[6.0]
  def change
    add_column :company_mats, :location, :string
  end
end
