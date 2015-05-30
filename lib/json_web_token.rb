require 'jwt'

class JsonWebToken
  def self.encode(payload, expiration = 24.hours.from_now)
    payload = payload.dup
    payload['exp'] = expiration.to_i

    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  def self.decode(token)
    payload = JWT.decode(token, Rails.application.secrets.secret_key_base).first
    HashWithIndifferentAccess.new payload
  end
end
