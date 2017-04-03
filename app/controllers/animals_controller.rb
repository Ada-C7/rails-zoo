class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    Animal.create(animal_params)
    redirect_to animals_path
  end

  def show
    @animal = find_animal
  end

  def edit
    @animal = find_animal
  end

  def update
    animal = find_animal
    animal.update_attributes(animal_params)
    animal.save
    redirect_to animal_path
  end

  def destroy
    Animal.find(params[:id]).destroy
    redirect_to animals_path
  end

private

  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end

  def find_animal
    Animal.find(params[:id])
  end
end
