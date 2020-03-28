class ChangeTypePasswordSalt < ActiveRecord::Migration[6.0]
  def change
  	change_column :users, :password_salt, :string
  end
end
