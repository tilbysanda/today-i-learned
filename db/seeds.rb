# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posts = Post.create([
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'},
  {title: "test#{(1..10).to_a.sample}", description: 'test description lorem ipsum', category: 'lifestyle'}
])