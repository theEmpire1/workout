FactoryGirl.define do
  factory :exercise, class: Exercise do
    title Faker::Lorem.word
    description Faker::Lorem.sentence
    image Faker::Avatar.image
  end

  factory :invalid_exercise, class: Exercise do
    title Faker::Lorem.word
    image Faker::Avatar.image
  end
end
