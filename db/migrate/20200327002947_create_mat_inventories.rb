class CreateMatInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :mat_inventories do |t|
      t.integer :company_mat_id
      t.integer :mat_id
      t.integer :sold

      t.timestamps
    end
  end
end
