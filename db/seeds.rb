# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.destroy_all
Post.destroy_all

100.times do |i| 
Post.create(title: Faker::Name.title, content: Faker::Hipster.paragraph)
	end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
Author.create(email: "123@gmail.com", password: '2wsx1qaz', password_confirmation: '2wsx1qaz')