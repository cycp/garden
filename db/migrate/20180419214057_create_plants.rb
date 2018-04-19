class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :price
      t.integer :time_to_grow

      t.timestamps
    end
  end
end
