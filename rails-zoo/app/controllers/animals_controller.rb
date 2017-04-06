class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    Animal.create(animal_params)
    redirect_to animals_path
  end

  private
  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end

end
