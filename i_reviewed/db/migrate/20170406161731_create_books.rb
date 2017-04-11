class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.references :reviewer, index: true

      t.timestamps null: false
    end
    add_foreign_key :books, :reviewers
  end
end
