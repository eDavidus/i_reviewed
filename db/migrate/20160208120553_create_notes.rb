class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :note
      t.string :book
      t.string :references

      t.timestamps null: false
    end
  end
end
