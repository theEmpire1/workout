require 'rails_helper'

RSpec.describe ExercisesController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'returns all exercises' do
      exercises = FactoryGirl.create_list(:exercise, 20)

      get :index
      binding.pry
      expect(response.body.length).to eql(exercises.to_json.length)
    end

  describe 'GET #show'
    it 'returns a single exercise as json' do
      exercise = FactoryGirl.create(:exercise)
      get :show, id: exercise.id

      expect(response.body).to be_json_eql(exercise.to_json)
    end
  end
end
