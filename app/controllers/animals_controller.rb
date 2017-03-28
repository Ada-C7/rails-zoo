class AnimalsController < ApplicationController

  # View all animals
  def index
    @animals = Animal.all
  end

  # View one animal
  def show
    @animal = Animal.find(params[:id])
  end

  # Create an animal
  def new
    @animal = Animal.new
  end

  def create
    Animal.create(animal_params)
    redirect_to animals_path
  end

  #Edit an animal
  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal = Animal.find(params[:id])
    animal.update(animal_params)

    redirect_to animal_path(animal)
  end

  #Delete an animal
  def destroy
    Animal.find(params[:id]).destroy
    redirect_to animals_path
  end

  # Create an animal needs authentication, "the Internet is a bad place"
  private
  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end
end
