class AddIndexToExercises < ActiveRecord::Migration
  def change
    add_index :exercises, :title, unique: true
  end
end
