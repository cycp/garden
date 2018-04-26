class AddNdexToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :ndex, :integer
  end
end
