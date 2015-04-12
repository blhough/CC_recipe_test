class AddUserIdToRecipe < ActiveRecord::Migration
  def change
    add_foreign_key :recipes, :users
    add_belongs_to :recipes, :user, index: true
  end
end
