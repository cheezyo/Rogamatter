class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :klass
      t.integer :klass_id
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
