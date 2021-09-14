# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times do |i|
    Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        state: ["en_estante","prestado"].sample,
        borrowed_at: Faker::Date.between(from: '2010-01-01', to: '2021-12-31'),
        return_at: Faker::Date.between(from: '2010-01-01', to: '2021-12-31')
    )
end