class AddUserRefToCommunityGardens < ActiveRecord::Migration[5.1]
  def change
    add_reference :community_gardens, :user, foreign_key: true
  end
end
