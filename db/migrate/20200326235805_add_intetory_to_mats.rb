class AddIntetoryToMats < ActiveRecord::Migration[6.0]
  def change
    add_column :mats, :inventroy, :integer
  end
end
