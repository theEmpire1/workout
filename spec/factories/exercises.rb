FactoryGirl.define do

  sequence(:title) { |n| "Exercise#{n}" }
  sequence(:description) { |n| "Description#{n}" }
  sequence(:image) { |n| "image_#{n}.jpg" }

  factory :exercise, class: Exercise do
    title
    description
    image
  end

  factory :existing_exercise, class: Exercise do
    title "Existing exercise"
    description "This already exists"
    image "image.jpeg"
  end

  factory :invalid_exercise, class: Exercise do
    title
    image
  end
end
