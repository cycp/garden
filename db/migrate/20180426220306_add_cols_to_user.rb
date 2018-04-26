class AddColsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :current_plant, :integer
    add_column :users, :time, :integer
  end
end
