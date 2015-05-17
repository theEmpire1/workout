require 'rails_helper'

RSpec.describe Exercise, type: :model do
  let(:valid_params) { {title: 'test title', description: 'test desc', image: 'test image'} }
  let(:invalid_params) { {title: 'test title', description: 'test desc'} }

  before(:each) do
    @exercise = Exercise.create(valid_params)
    @invalid_exercise = Exercise.new(invalid_params)
  end

    it 'has a valid factory' do
      expect(@exercise).to be_valid
    end

    it 'does not allow invalid exercises' do
      expect(@invalid_exercise).not_to be_valid
    end

    it 'returns an Exercise object with populated values' do
      result = Exercise.find(@exercise.id)
      expect(result).to eql(@exercise)
    end
end
