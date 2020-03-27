class AddAdressToCompanies1 < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :org_nr, :integer
    add_column :companies, :email, :string
    add_column :companies, :contact_person_email, :string
  end
end
