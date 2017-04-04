class DropTodoItemsTable < ActiveRecord::Migration
  def up
    drop_table :todo_items
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
