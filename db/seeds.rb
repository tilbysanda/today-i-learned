# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

john = User.create(email: 'john@beatles.com', password: 'testtest', first_name: 'john', last_name: 'john')
paul = User.create(email: 'paul@beatles.com', password: 'testtest', first_name: 'paul', last_name: 'paul')
ringo = User.create(email: 'ringo@beatles.com', password: 'testtest', first_name: 'ringo', last_name: 'ringo')
george = User.create(email: 'george@beatles.com', password: 'testtest', first_name: 'george', last_name: 'george')

posts = Post.create([
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'}
])

startup_stash = Post.create(
  title: 'Startup Stash',
  description: 'A curated directory of 400 resources & tools for startups',
  category: 'lifestyle',
  user: john
)

startup_launch_list = Post.create(
  title: 'Startup Launch List',
  description: 'Articles you need to read before launching a startup',
  category: 'lifestyle',
  user: paul
)

john.up_votes startup_stash
paul.up_votes startup_stash
george.up_votes startup_stash

ringo.up_votes startup_launch_list