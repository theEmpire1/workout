require 'rails_helper'

RSpec.describe ExercisesController, type: :controller do
  before(:each) do
    @exercise = FactoryGirl.create(:exercise)
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'returns all exercises' do
      pending("need to figure out how to search on exercises")
    end

  describe 'GET #show'
    it 'returns a single exercise as json' do

      get :show, id: @exercise.id

      expect(response.body).to be_json_eql(@exercise.to_json)
    end
  end
end
