class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.float :height
      t.float :weight
      t.references :person, index: true

      t.timestamps null: false
    end
    add_foreign_key :personal_infos, :people
  end
end
