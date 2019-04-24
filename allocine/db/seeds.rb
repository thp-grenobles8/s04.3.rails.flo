# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |index|
  synopsis_word = []
  while synopsis_word.length < 10
    synopsis_word += Faker::Movie.quote.split(" ")
  end
  Movie.create(
    name: Faker::Book.title,
    year: rand(1900..2020),
    genre: ["action", "horreur", "comédie", "drame"].sample,
    director: Faker::Name.name,
    allocine_rating: '%.1f' % rand(0.0..5.0),
    already_soon: false,
    my_rating: nil,
    synopsis: synopsis_word.join(" "))
end
