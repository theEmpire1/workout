class ExercisesController < ApplicationController
  def index
    exercises = Exercise.all
    render json: exercises
  end

  def show
    exercise = Exercise.find(params[:id])
    render json: exercise
  end

  def create
    Exercise.create_with(exercise_params).find_or_create_by(title: exercise_params[:title])

    render :nothing => true
  end

  private

  def exercise_params
    params.require(:exercise).permit(:title, :description, :image)
  end
end
