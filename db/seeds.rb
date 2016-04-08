# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
800.times do |n|
    a = Zoo.new
    a.name =  Faker::Name.name 
    a.description =  Faker::Hacker.say_something_smart 
    a.save
end 