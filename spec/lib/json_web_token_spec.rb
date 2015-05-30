require 'rails_helper'
require 'json_web_token'

describe JsonWebToken do
  let(:payload) { { 'user_id' => 1 } }
  let(:token) { JsonWebToken.encode(payload) }
  describe '#encode' do
    it 'does not leave un-encrypted payload information' do
      expect(token).not_to include('user_id')
    end
  end

  describe '#decode' do
    it 'returns a human-readable payload' do
      expected_payload = JsonWebToken.decode(token)
      expect(expected_payload['user_id']).to eql(payload['user_id'])
    end

    it 'has the correct expiry' do
      expected_payload = JsonWebToken.decode(token)
      expect(expected_payload['exp']).to eql(24.hours.from_now.to_i)
    end
  end
end
