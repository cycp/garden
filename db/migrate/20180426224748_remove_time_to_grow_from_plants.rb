class RemoveTimeToGrowFromPlants < ActiveRecord::Migration[5.1]
  def change
    remove_column :plants, :time_to_grow, :integer
  end
end
