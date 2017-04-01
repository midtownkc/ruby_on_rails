# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#Profile.destroy_all
#TodoList.destroy_all
#TodoItem.destroy_all

User.destroy_all
one_year = (Date.today + 1.year)

Profile.create! [
  { gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina" },
  { gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump" },
  { gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson" },
  { gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton" }
]

Profile.all.each do |profile|
  user = profile.create_user!( username: profile.last_name, password_digest: " #{profile.birth_year} + #{profile.first_name}" )
  user_list = user.todo_lists.create!(list_name: "List of #{user.username}'s stuff", list_due_date: one_year)
    5.times do |i|
      user_list.todo_items.create!(due_date: one_year, title: "Item ##{i}", description: "Yes uh huh! #{i}", completed: false)
    end
end
