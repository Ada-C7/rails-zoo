class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    Animal.create(task_params)
  end

  def show
    @animal = Animal.find(params[:id])
  end

  private
  def task_params
    return params.require(:animal).permit(:name, :species, :age)
  end

end
