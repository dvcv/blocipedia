FactoryGirl.define do
  factory :user do
     email 'regular@user.com'
     password 'password'
     password_confirmation 'password'
     confirmed_at Time.zone.now
  end
end
