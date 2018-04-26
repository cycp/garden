class AddProductivityToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :productivity, :integer
  end
end
