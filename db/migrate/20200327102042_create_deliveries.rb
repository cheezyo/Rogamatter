class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.string :klass
      t.integer :klass_id
      t.date :pack_date
      t.date :delivery
      t.date :delivered_date
      t.integer :change_amount
      t.boolean :notify
      t.integer :commet_id

      t.timestamps
    end
  end
end
