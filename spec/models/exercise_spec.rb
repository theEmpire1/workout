require 'rails_helper'

RSpec.describe Exercise, type: :model do
  it 'has a valid factory' do
    test_exercise = FactoryGirl.build(:exercise)

    expect(test_exercise).to be_valid
  end

  it 'does not allow invalid exercises' do
    test_exercise = FactoryGirl.build(:invalid_exercise)

    expect(test_exercise).not_to be_valid
  end
end
