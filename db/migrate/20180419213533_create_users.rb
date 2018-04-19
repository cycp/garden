class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :coins
      t.integer :ax

      t.timestamps
    end
  end
end
