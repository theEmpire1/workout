FactoryGirl.define do
  factory :exercise, class: Exercise do
    title 'Shoulder Press'
    description 'Push the weight up with your shoulders'
    image 'Some image file'
  end

  factory :invalid_exercise, class: Exercise do
    title 'Shoulder Press'
    image 'Some image file'
  end
end
