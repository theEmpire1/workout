require 'rails_helper'
require 'json_web_token'

describe JsonWebToken do
  let(:payload) { { 'user_id' => 1 } }
  let(:token) { "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0MzI5NTAzNTd9.X__oxn39N8r2wKT1WM5d8YkUZkGR8oDvGCPjquA_3Ts" }

  describe '#encode' do
    it 'does not leave un-encrypted payload information' do
      token = JsonWebToken.encode(payload)

      expect(token).not_to include('user_id')
    end
  end
end
