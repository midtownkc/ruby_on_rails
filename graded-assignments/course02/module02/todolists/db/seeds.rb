# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.create! [
  { username: "Fiorina", password_digest: "iluvmoney" },
  { username: "Trump", password_digest: "nyetnyet" },
  { username: "Carson", password_digest: "iamsoSmart" },
  { username: "Clinton", password_digest: "unTouchable" }
]

Profile.create! [
  { gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina", user_id: 1 },
  { gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump", user_id: 2 },
  { gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carlson", user_id: 3 },
  { gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton", user_id: 4 }
]
#
# t.string   "list_name"
# t.date     "list_due_date"
TodoList.create! [
  { list_name: "Nasty things Donald Said", list_due_date: (Date.today + 1.year)},
  { list_name: "Things I want Vlad to do to me", list_due_date: (Date.today + 1.year)},
  { list_name: "Reasons I'm Jesus", list_due_date: (Date.today + 1.year)},
  { list_name: "All the great things I've done!", list_due_date: (Date.today + 1.year)}
]

# create_table "todolists_users", force: :cascade do |t|
#   t.integer "user_id"
#   t.integer "todolist_id"
# end
