class ExercisesController < ApplicationController
  def index
  end

  def show
    exercise = Exercise.find(params[:id])

    respond_to do |format|
      format.json { render json: exercise.to_json }
    end
  end
end
