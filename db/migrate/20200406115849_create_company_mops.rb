class CreateCompanyMops < ActiveRecord::Migration[6.0]
  def change
    create_table :company_mops do |t|
      t.integer :change
      t.string :change_day
      t.date :start_date
      t.date :end_date
      t.integer :company_id
      t.integer :mop_id
      t.integer :amount
      t.decimal :delivery_price
      t.decimal :contract_price
      t.string :location

      t.timestamps
    end
  end
end
