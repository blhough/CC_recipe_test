class AddChapterIdToAssignments < ActiveRecord::Migration
  def change
    add_belongs_to :assignments, :chapter, index: true
  end
end
