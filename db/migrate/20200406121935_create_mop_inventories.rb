class CreateMopInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :mop_inventories do |t|
      t.integer :company_mop_id
      t.integer :mop_id
      t.integer :sold
      t.timestamps
    end
  end
end
