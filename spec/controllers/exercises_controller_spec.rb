require 'rails_helper'

RSpec.describe ExercisesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

  describe 'GET #show'
    it 'returns a single exercise as json' do

      exercise_params = {
                        name: 'shoulder press',
                        description: 'push them thangs',
                        image: 'some file name'
                      }

      test_exercise = Exercises.create(test_exercise)

      get :show, id: test_exercise.id

      expect(response.body).to be_json_eql(test_exercise.to_json)
    end
  end
end
