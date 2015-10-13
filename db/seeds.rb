# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |n|

User.create! first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "example#{n}@yahoo.com", password: "12345678"

end



Chatroom.create! name:"Front End"
Chatroom.create! name:"Back End"
Chatroom.create! name:"Random"

users = User.all
10.times do

  content = Faker::Lorem.sentence(3)
  posted_at = Faker::Time.between(2.days.ago, Time.now, :all)
  chatroom_id = rand(1..3)
  users.each {|user| user.messages.create!(content: content, posted_at: posted_at, chatroom_id: chatroom_id)}

end
