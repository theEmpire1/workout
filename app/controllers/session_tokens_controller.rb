class SessionTokensController < ApplicationController
  before_action :authenticate_user!

  def create
    render json: {}
  end
end
