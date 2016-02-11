class RemoveReferencesToNotes2 < ActiveRecord::Migration
  def change
    remove_column :notes, :references, :string
  end
end
