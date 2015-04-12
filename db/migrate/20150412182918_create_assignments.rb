class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :recipe, index: true
      t.references :chapters, index: true

      t.timestamps null: false
    end
    add_foreign_key :assignments, :recipes
    add_foreign_key :assignments, :chapters
  end
end
