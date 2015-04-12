class RemoveChaptersIdFromAssignments < ActiveRecord::Migration
  def change
    remove_column :assignments, :chapters_id, :integer
  end
end
