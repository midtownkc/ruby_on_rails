class TodoItem < ActiveRecord::Base

  def self.completed_todo_items(items)
    count = 0
    items.each do |item|
      if item.completed?
        count += 1
      end
    end
    count
  end

end
