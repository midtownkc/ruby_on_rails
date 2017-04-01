class CreateSalaryRanges < ActiveRecord::Migration
  def change
    create_table :salary_ranges do |t|
      t.float :min_salary
      t.float :max_salary
      t.references :job, index: true

      t.timestamps null: false
    end
    add_foreign_key :salary_ranges, :jobs
  end
end
