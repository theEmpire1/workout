require 'rails_helper'
require 'json_web_token'
include Devise::TestHelpers

describe SessionTokensController, type: :controller do
  let(:current_user) { FactoryGirl.create(:user) }

  before(:each) do
    sign_in current_user
  end

  describe '#create' do
    it 'responds with a JWT' do
      post :create
      token = JSON.parse(response.body)['token']

      expect(token).to be_kind_of(String)
      segments = token.split('.')
      expect(segments.size).to eql(3)
    end
  end
end
