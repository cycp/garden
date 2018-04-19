class AddUserRefToGardens < ActiveRecord::Migration[5.1]
  def change
    add_reference :gardens, :user, foreign_key: true
  end
end
