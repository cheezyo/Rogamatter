class CreateCompanyMats < ActiveRecord::Migration[6.0]
  def change
    create_table :company_mats do |t|
      t.integer :change
      t.string :change_day
      t.date :start_date
      t.date :end_date
      t.integer :company_id
      t.integer :mat_id
      t.integer :amount

      t.timestamps
    end
  end
end
