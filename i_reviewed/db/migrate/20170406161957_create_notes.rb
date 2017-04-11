class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :note
      t.references :book, index: true

      t.timestamps null: false
    end
    add_foreign_key :notes, :books
  end
end
