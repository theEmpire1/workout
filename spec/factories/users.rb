FactoryGirl.define do
  factory :user, class: User do
    username 'TheYellowDart'
    email 'bawse.man.jones@swag.com'
    password 'password'
    password_confirmation 'password'
  end

end
