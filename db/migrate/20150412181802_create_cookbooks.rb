class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.string :title
      t.string :subtitle
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
