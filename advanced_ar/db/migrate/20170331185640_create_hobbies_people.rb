class CreateHobbiesPeople < ActiveRecord::Migration
  def change
    create_table :hobbies_people do |t|
      t.references :person, index: true
      t.references :hobby, index: true
    end
    add_foreign_key :hobbies_people, :people
    add_foreign_key :hobbies_people, :hobbies
  end
end
