class AnimalsController < ApplicationController

  # View all animals
  def index
    @animals = Animal.all
  end

  # View one animal
  def show
    id = params[:id].to_i
    @animal = Animal.find(id)
  end

  # Create an animal
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
