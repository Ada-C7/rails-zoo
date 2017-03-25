class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
  Task.create(task_params)
  redirect_to tasks_path
  end




private
def task_params
  return params.require(:task).permit(:name, :deadline, :completed)
end

end
