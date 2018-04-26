class AddGardenRefToPlants < ActiveRecord::Migration[5.1]
  def change
    add_reference :plants, :garden, foreign_key: true
  end
end
