# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  puts "Starting to run seeds file..."
  
  30.times do |topic|
    Topic.create!(title: "My Title #{topic}")
  end

 puts "50 Topics created"
 
 AdminUser.create!(email: "admin@test.com", password: "password", password_confirmation: "password", first_name: "Jon", last_name: "Snow", username: "teacher")
 
 puts "Admin user created"
 
 User.create!(email: "student@test.com", password: "password", password_confirmation: "password", first_name: "Jane", last_name: "Snow", username: "learner")
 
 puts "Student user created"
 
 30.times do |post|
  Post.create!(
    title: "My Post #{post}",
    content: "Some amazing content here",
    topic_id: Topic.last.id,
    user_id: User.last.id
  )
end

puts "30 posts were created"