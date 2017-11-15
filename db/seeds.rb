require 'random_data'

# Create Users
 5.times do
   User.create!(
   email:    RandomData.random_email,
   password: RandomData.random_sentence,
   confirmed_at: Time.zone.now
   )
 end
 users = User.all

User.create!(
  email:  'dvcv92@gmail.com',
  password:   "password",
  password_confirmation: 'password',
  confirmed_at: Time.zone.now
)
users = User.all

# Create Wikis
50.times do
 Wiki.create!(
   title:  RandomData.random_sentence,
   body:   RandomData.random_paragraph,
   user: users.sample
 )
end
wikis = Wiki.all


puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{User.count} users created"
