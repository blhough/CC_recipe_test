class AddCookbookIdToUser < ActiveRecord::Migration
  def change
    add_foreign_key :cookbooks, :users
  end
end
