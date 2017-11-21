require 'random_data'

# Create Users
 3.times do
   User.create!(
   email:    Faker::Internet.unique.email,
   password: RandomData.random_sentence,
   confirmed_at: Time.zone.now
   )
 end
 users = User.all
#standard user
User.create!(
  email:  'standard@gmail.com',
  password:   "password",
  password_confirmation: 'password',
  confirmed_at: Time.zone.now,
  role: :standard
)
#admin user
User.create!(
  email:  'admin@gmail.com',
  password:   "password",
  password_confirmation: 'password',
  confirmed_at: Time.zone.now,
  role: :admin
)
#premium user
User.create!(
  email:  'premium@gmail.com',
  password:   "password",
  password_confirmation: 'password',
  confirmed_at: Time.zone.now,
  role: :premium
)
users = User.all

# Create Wikis
50.times do
 Wiki.create!(
   title:  Faker::HarryPotter.location,
   body:   "### #{Faker::HarryPotter.book}
    #{Faker::HarryPotter.quote}
    [#{Faker::Internet.domain_name}](http://www.google.com)!",
   user: users.sample
 )
end
wikis = Wiki.all


puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{User.count} users created"
