class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio

      t.timestamps null: false
    end
    add_foreign_key :recipes, :users
    add_belongs_to :recipes, :user, index: :true
  end
end
