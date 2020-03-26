class CreateMats < ActiveRecord::Migration[6.0]
  def change
    create_table :mats do |t|
      t.string :mat_type
      t.string :mat_size
      t.text :comment

      t.timestamps
    end
  end
end
