class CreateMops < ActiveRecord::Migration[6.0]
  def change
    create_table :mops do |t|
      t.string :name
      t.string :size

      t.timestamps
    end
  end
end
