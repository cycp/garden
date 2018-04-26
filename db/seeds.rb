# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Make Pokemon
[['succulent', 1, 1], ['Rose', 2, 2], ['Grape', 3, 3], ['Blueberry', 4, 4]].each do |name, price, ndex|
  Pokemon.create(
    name: name,
    price: price,
    ndex: ndex,
  )
end

  %w(Clara Shenelle Akash Michelle).each do |name|
  Trainer.create name: name, email: name+"@garden.com", password: 'password', coins: 10, productivity: 0
end