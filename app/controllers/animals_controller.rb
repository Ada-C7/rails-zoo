class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    animal_data = animal_params
    Animal.create(animal_data)

    redirect_to animals_path
  end

  def show
    id = params[:id].to_i
    @animal = Animal.find(id)
  end

private
  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end
end
