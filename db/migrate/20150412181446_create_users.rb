class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :Recipe, index: true
      t.string :name
      t.text :bio

      t.timestamps null: false
    end
    add_foreign_key :users, :Recipes
  end
end
