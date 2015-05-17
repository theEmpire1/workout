class ExercisesController < ApplicationController
  def index
  end

  def show
    exercise = Exercise.find(params[:id])
    render json: exercise
  end
end
