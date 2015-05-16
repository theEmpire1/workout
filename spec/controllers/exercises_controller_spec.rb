require 'rails_helper'

RSpec.describe ExercisesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

  end

  describe 'GET #show'
    it 'returns a single exercise as json' do

      test_exercise = {
                        name: 'shoulder press',
                        description: 'push them thangs',
                        image: 'some file name'
                      }

      Exercises.create(test_exercise)

      get :show

      expect(response.body).to be_json_eql(test_exercise.to_json)
    end
  end
end
