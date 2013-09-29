# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DEFAULT_INSECURE_PASSWORD = 'mikethefrog1'

User.create({
  first_name: "Andre",
  last_name: "Jones",
  profile_name: "aij06",
  email: "andreij6@gmail.com",
  password: "Stronger6",
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})
Category.create({
  title:  "Private",
  state: true,
  position: 0,
  category_id: 1
})

Category.create({
  title:  "Poker Community",
  state: true,
  position: 0,
  category_id: 2
})

Category.create({
  title:  "Poker Discussion",
  state: true,
  position: 0,
  category_id: 3
})

Category.create({
  title:  "Non-Poker Discussion",
  state: true,
  position: 0,
  category_id: 4
})


seed_user = jason

seed_user.statuses.create(content: "Hello, world!")
jim.statuses.create(content: "Hi, I'm Jim")
nick.statuses.create(content: "Hello from the internet!")


