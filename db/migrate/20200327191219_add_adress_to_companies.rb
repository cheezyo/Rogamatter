class AddAdressToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :street, :string
    add_column :companies, :post_code, :integer
    add_column :companies, :city, :string
    add_column :companies, :phone_number, :integer
    add_column :companies, :contact_person, :string
    add_column :companies, :phone_number_contact_person, :integer
  end
end
