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
      expect(response.body.length).to eql(exercises.to_json.length)
    end
  end

  describe 'GET #show' do
    it 'returns a single exercise as json' do
      exercise = FactoryGirl.create(:exercise)
      get :show, id: exercise.id

      expect(response.body).to be_json_eql(exercise.to_json)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new exercise' do
        expect { post :create, exercise: FactoryGirl.attributes_for(:exercise)}.to change(Exercise, :count).by(1)
      end

      it 'does not create an exercise if it already exists' do
        FactoryGirl.create(:existing_exercise)

        expect { post :create, exercise: FactoryGirl.attributes_for(:existing_exercise)}.to change(Exercise, :count).by(0)
      end
    end
  end
end
