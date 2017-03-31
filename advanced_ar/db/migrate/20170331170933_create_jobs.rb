class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :position_id
      t.references :person, index: true

      t.timestamps null: false
    end
    add_foreign_key :jobs, :people
  end
end
