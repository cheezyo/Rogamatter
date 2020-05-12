class ChangeColumnMops < ActiveRecord::Migration[6.0]
  def change
  	rename_column :mops, :type, :mop_type
  end
end
