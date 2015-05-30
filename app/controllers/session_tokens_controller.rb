class SessionTokensController < ApplicationController
  before_action :authenticate_user!

  def create
    token = JsonWebToken.encode('user_id' => current_user.id)
    render json: { 'token' => token }
  end

  def show
    render json: { 'logged_in' => true }
  end
end
