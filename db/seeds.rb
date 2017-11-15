require 'random_data'

# Create Users
User.create!(
  email:  'dvcv92@gmail.com',
  password:   "password",
  password_confirmation: 'password',
  confirmed_at: Time.zone.now
)
user = User.all

# Create Wikis
50.times do
 Wiki.create!(
   title:  RandomData.random_sentence,
   body:   RandomData.random_paragraph,
   user: user[0]
 )
end
wikis = Wiki.all


puts "Seed finished"
puts "#{Wiki.count} wikis created"
puts "#{User.count} users created"
