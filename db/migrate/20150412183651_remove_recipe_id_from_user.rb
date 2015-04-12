class RemoveRecipeIdFromUser < ActiveRecord::Migration
  def change
   remove_column :users, :Recipe_id, :integer
  end
end
