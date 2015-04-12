class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.belongs_to :cookbook, index: true
      t.string :title
      t.string :subtitle

      t.timestamps null: false
    end
    add_foreign_key :chapters, :cookbooks
  end
end
