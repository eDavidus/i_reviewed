class RemoveBookToNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :book, :string
  end
end
